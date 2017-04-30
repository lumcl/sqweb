class ReqOrdsController < ApplicationController
  before_action :set_req_ord, only: [:show, :edit, :update, :destroy, :new_avls, :new_mats, :new_mats_part_2]

  # GET /req_ords
  def index
    @req_ords = []
    @req_ords = ReqOrd.all.page(params[:page])
  end

  # GET /req_ords/1
  def show
  end

  # GET /req_ords/new
  def new
    @req_ord = ReqOrd.new
    @req_ord.req_by = current_user.email
    @req_ord.ord_at = Date.current.to_time
    @req_ord.due_at = Date.current.to_time.noon + 7.days
    @req_ord.vtweg = case request.ip[0..5]
                       when '172.31' then
                         'DT'
                       when '172.91' then
                         'TX'
                       when '172.63' then
                         'PH'
                       else
                         'TP'
                     end
  end

  # GET /req_ords/1/edit
  def edit
    @flows = Flow.where(parent_id: @req_ord.uuid)
  end

  # POST /req_ords
  def create
    @req_ord = ReqOrd.new(req_ord_params)
    @req_ord.assign_uuid
    @req_ord.status = 'Creating'
    @req_ord.ord_no = "*#{@req_ord.uuid}"
    @req_ord.creator = current_user.email
    @req_ord.updater = current_user.email
    if @req_ord.save
      redirect_to @req_ord, notice: 'Req ord was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /req_ords/1
  def update
    if @req_ord.update(req_ord_params)
      redirect_to edit_req_ord_url(@req_ord), notice: 'Req ord was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /req_ords/1
  def destroy
    @req_ord.destroy
    redirect_to req_ords_url, notice: 'Req ord was successfully destroyed.'
  end

  def check_matkl
    sql = "select matkl,wgbez60 from sapsr3.t023t where mandt='168' and matkl=? and spras='M'"
    @t023 = Sapdb.find_by_sql([sql, params[:matkl]])
  end

  def new_avls
    @avls = @req_ord.missing_avls
  end

  def create_avls
    @req_ord = ReqOrd.find(params[:req_ord_id])
    ids = params[:ids]
    if ids.present?
      @req_ord.updater = current_user.email
      @req_ord.create_avls(ids)
      @req_ord.save
    end
    redirect_to req_ord_path(@req_ord, anchor: 'anchor_req_ord_sups')
  end

  def new_mats
  end

  def new_mats_part_2
    req_ord_mats = @req_ord.req_ord_mats.all.select(:matnr).pluck(:matnr)
    req_ord_mats.append(' ') if req_ord_mats.empty?
    if params[:excel_mats].present?
      mats = text_area_to_array(params[:excel_mats])
      sql = "
        select a.matnr,a.maktx,b.mstae,b.meins
          from sapsr3.makt a
            join sapsr3.mara b on b.mandt=a.mandt and b.matnr=a.matnr and b.matkl=?
          where a.mandt='168' and a.spras='M' and a.matnr in (?)
            and a.matnr not in (?)
            order by a.matnr
        "
      @materials = Sapdb.find_by_sql([sql, @req_ord.matkl, mats, req_ord_mats])
    else
      sql = "
        select a.matnr,a.maktx,b.mstae,b.meins
          from sapsr3.makt a
            join sapsr3.mara b on b.mandt=a.mandt and b.matnr=a.matnr and b.matkl=?
          where a.mandt='168' and a.spras='M' and a.matnr like '%#{params[:matnr]}%' and a.maktx like '%#{params[:maktx]}%'
            and a.matnr not in (?)
            order by a.matnr
      "
      @materials = Sapdb.find_by_sql([sql, @req_ord.matkl, req_ord_mats])
    end
  end

  def create_mats
    @req_ord = ReqOrd.find(params[:req_ord_id])
    ids = params[:ids]
    target_pct = params[:target_pct] || 0.0
    if ids.present?
      @req_ord.updater = current_user.email
      @req_ord.create_mats(ids, target_pct.to_f)
      @req_ord.save
    end
    redirect_to req_ord_path(@req_ord, anchor: 'anchor_req_ord_mats')
  end

  def start_workflow

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_req_ord
    @req_ord = ReqOrd.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def req_ord_params
    params.require(:req_ord).permit(:uuid, :matkl, :status, :ord_no, :ord_at, :due_at, :ex_curr, :ex_rate, :subject, :remark, :req_by, :req_remark, :sent_by, :sent_at, :sent_ip, :reply_at, :sent_cnt, :reply_cnt, :creator, :updater, :approver, :finish_at, {werkss: []}, :vtweg, :matgrp, :matgrp_id)
  end
end
