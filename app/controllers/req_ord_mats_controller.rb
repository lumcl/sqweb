class ReqOrdMatsController < ApplicationController
  before_action :set_req_ord_mat, only: [:show, :edit, :update, :destroy]

  # GET /req_ord_mats
  def index
    @req_ord_mats = ReqOrdMat.all
  end

  # GET /req_ord_mats/1
  def show
  end

  # GET /req_ord_mats/new
  def new
    @req_ord_mat = ReqOrdMat.new
    @req_ord_mat.req_ord_id = params[:id]
    render :edit
  end

  # GET /req_ord_mats/1/edit
  def edit
  end

  # POST /req_ord_mats
  def create
    @req_ord_mat = ReqOrdMat.new(req_ord_mat_params)

    respond_to do |format|
      if @req_ord_mat.save
        @req_ord = @req_ord_mat.req_ord
        format.js {render :update}
        format.html {redirect_to @req_ord_mat, notice: 'Req ord mat was successfully created.'}
      else
        format.js {render :new}
        format.html {render :new} end
    end
  end

  # PATCH/PUT /req_ord_mats/1
  def update
    respond_to do |format|
      if @req_ord_mat.update(req_ord_mat_params)
        @req_ord = @req_ord_mat.req_ord
        format.js {render :update}
        format.html { redirect_to @req_ord_mat, notice: 'Req ord mat was successfully updated.' }
      else
        format.js {render :edit}
        format.html {render :edit}
      end
    end
  end

  # DELETE /req_ord_mats/1
  def destroy
    @req_ord_mat.destroy
    redirect_to req_ord_mats_url, notice: 'Req ord mat was successfully destroyed.'
  end

  def ajax_matnr
    sql = "select maktx from sapsr3.makt where mandt='168' and matnr=? and spras='M'"
    @rows = Sapdb.find_by_sql([sql, params[:matnr]])
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_req_ord_mat
    @req_ord_mat = ReqOrdMat.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def req_ord_mat_params
    params.require(:req_ord_mat).permit(:uuid, :req_ord_id, :seq, :matnr, :maktx, :remark, :status, :meins, :target_pct, :target_prc, :vtweg_prc, :lowest_prc, :ref_matnr, :ref_maktx, :end_customer, :prd_app, :design_no, :pilot_run_date, :mass_prod_date, :forecast_qty, :forecast_uom, :drawing, :order_plant, :creator, :updater, :create_ip, :update_ip, :maker_part_no)
  end
end
