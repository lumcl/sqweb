class ReqOrdsController < ApplicationController
  before_action :set_req_ord, only: [:show, :edit, :update, :destroy]

  # GET /req_ords
  def index
    @req_ords = ReqOrd.all
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
                       when '172.31' then 'DT'
                       when '172.91' then 'TX'
                       when '172.63' then 'PH'
                       else 'TP'
                     end
  end

  # GET /req_ords/1/edit
  def edit
  end

  # POST /req_ords
  def create
    @req_ord = ReqOrd.new(req_ord_params)

    if @req_ord.save
      redirect_to @req_ord, notice: 'Req ord was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /req_ords/1
  def update
    if @req_ord.update(req_ord_params)
      redirect_to @req_ord, notice: 'Req ord was successfully updated.'
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

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_req_ord
    @req_ord = ReqOrd.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def req_ord_params
    params.require(:req_ord).permit(:uuid, :matkl, :status, :ord_no, :ord_dt, :due_at, :ex_curr, :ex_rate, :subject, :remark, :req_by, :req_remark, :sent_by, :sent_at, :sent_ip, :reply_at, :sent_cnt, :reply_cnt, :creator, :updater, :approver, :finish_at, :werkss, :vtweg, :matgrp, :matgrp_id)
  end
end
