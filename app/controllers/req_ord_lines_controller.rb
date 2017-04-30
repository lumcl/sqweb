class ReqOrdLinesController < ApplicationController
  before_action :set_req_ord_line, only: [:show, :edit, :update, :destroy]

  # GET /req_ord_lines
  def index
    @req_ord_lines = ReqOrdLine.all
  end

  # GET /req_ord_lines/1
  def show
  end

  # GET /req_ord_lines/new
  def new
    @req_ord_line = ReqOrdLine.new
  end

  # GET /req_ord_lines/1/edit
  def edit
  end

  # POST /req_ord_lines
  def create
    @req_ord_line = ReqOrdLine.new(req_ord_line_params)

    if @req_ord_line.save
      redirect_to @req_ord_line, notice: 'Req ord line was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /req_ord_lines/1
  def update
    if @req_ord_line.update(req_ord_line_params)
      redirect_to @req_ord_line, notice: 'Req ord line was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /req_ord_lines/1
  def destroy
    @req_ord_line.destroy
    redirect_to req_ord_lines_url, notice: 'Req ord line was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_req_ord_line
      @req_ord_line = ReqOrdLine.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def req_ord_line_params
      params.require(:req_ord_line).permit(:uuid, :req_ord_id, :req_ord_sup_id, :req_ord_mat_id, :werks, :cur_prc, :cur_prc_conv, :cur_leadtime, :cur_moq, :sup_prc, :sup_prc_conv, :chg_pct, :sup_valid_from, :sup_valid_to, :sup_moq, :sup_leadtime, :sup_remark, :open_by, :open_at, :open_ip, :reply_by, :reply_at, :reply_ip, :cur_alloc, :sup_alloc, :req_remark, :req_review_by, :req_review_at, :req_review_result, :req_review_remark, :req_approved_by, :req_approved_at, :req_approved_result, :req_approved_remark, :rcv_remark, :rcv_review_by, :rcv_review_at, :rcv_review_result, :rcv_review_remark, :rcv_approved_by, :rcv_approved_at, :rcv_approved_result, :rcv_approved_remark, :creator, :updater, :create_ip, :update_ip)
    end
end
