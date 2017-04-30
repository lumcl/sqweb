class ReqOrdSupsController < ApplicationController
  before_action :set_req_ord_sup, only: [:show, :edit, :update, :destroy]

  # GET /req_ord_sups
  def index
    @req_ord_sups = ReqOrdSup.all
  end

  # GET /req_ord_sups/1
  def show
  end

  # GET /req_ord_sups/new
  def new
    @req_ord_sup = ReqOrdSup.new
  end

  # GET /req_ord_sups/1/edit
  def edit
  end

  # POST /req_ord_sups
  def create
    @req_ord_sup = ReqOrdSup.new(req_ord_sup_params)

    if @req_ord_sup.save
      redirect_to @req_ord_sup, notice: 'Req ord sup was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /req_ord_sups/1
  def update
    if @req_ord_sup.update(req_ord_sup_params)
      #redirect_to @req_ord_sup, notice: 'Req ord sup was successfully updated.'
      render js: "alert('#{I18n.translate('save_success')}')"
    else
      render :edit
    end
  end

  # DELETE /req_ord_sups/1
  def destroy
    req_ord_id = @req_ord_sup.req_ord_id
    @req_ord_sup.destroy
    redirect_to req_ord_url(id: req_ord_id, anchor: 'anchor_req_ord_sups')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_req_ord_sup
      @req_ord_sup = ReqOrdSup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def req_ord_sup_params
      params.require(:req_ord_sup).permit(:uuid, :req_ord_id, :lifnr, :sortl, :name1, :weark, :trading_type, :emails, :sent_at, :received_at, :open_by, :open_at, :open_ip, :reply_by, :reply_at, :reply_ip, :creator, :updater)
    end
end
