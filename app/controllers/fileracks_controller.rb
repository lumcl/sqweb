class FileracksController < ApplicationController
  before_action :set_filerack, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /fileracks
  def index
    @fileracks = Filerack.all
  end

  # GET /fileracks/1
  def show
  end

  # GET /fileracks/new
  def new
    @filerack = Filerack.new
  end

  # GET /fileracks/1/edit
  def edit
  end

  # POST /fileracks
  def create
    @filerack = Filerack.new(filerack_params)
    @filerack.creator = current_user.email
    @filerack.create_ip = request.ip
    respond_to do |format|
      if @filerack.save
        @parent_id = @filerack.parent_id
        format.js { render :create }
        format.html { redirect_to @filerack, notice: 'Filerack was successfully created.' }
      else
        render :new
      end

    end
  end

  # PATCH/PUT /fileracks/1
  def update
    if @filerack.update(filerack_params)
      redirect_to @filerack, notice: 'Filerack was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /fileracks/1
  def destroy
    @parent_id = @filerack.parent_id
    path = @filerack.document.path
    @filerack.destroy
    QcloudCos.delete(path)
    respond_to do |format|
      format.js { render :create }
      format.html { redirect_to fileracks_url, notice: 'Filerack was successfully destroyed.' }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_filerack
    @filerack = Filerack.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def filerack_params
    params.require(:filerack).permit(:uuid, :parent_id, :filename, :document, :remark, :creator)
  end
end
