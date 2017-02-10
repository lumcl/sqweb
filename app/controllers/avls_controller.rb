class AvlsController < ApplicationController
  before_action :set_avl, only: [:show, :edit, :update, :destroy]

  # GET /avls
  def index
    @avls = Avl.all
  end

  # GET /avls/1
  def show
  end

  # GET /avls/new
  def new
    @avl = Avl.new
  end

  # GET /avls/1/edit
  def edit
  end

  # POST /avls
  def create
    @avl = Avl.new(avl_params)

    if @avl.save
      redirect_to @avl, notice: 'Avl was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /avls/1
  def update
    if @avl.update(avl_params)
      redirect_to @avl, notice: 'Avl was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /avls/1
  def destroy
    @avl.destroy
    redirect_to avls_url, notice: 'Avl was successfully destroyed.'
  end

  def create_via_excel

  end

  def update_via_excel
    # 工廠	供應商	物料組	郵件	負責人
    @error_logs = Avl.create_via_excel(text_area_to_array(params[:avls]))
    if @error_logs.blank?
      redirect_to avls_url, notice: t('upload_success')
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_avl
    @avl = Avl.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def avl_params
    params.require(:avl).permit(:uuid, :werks, :lifnr, :matkl, :email, :resp)
  end
end
