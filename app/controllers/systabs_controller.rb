class SystabsController < ApplicationController
  before_action :set_systab, only: [:show, :edit, :update, :destroy]

  # GET /systabs
  def index
    @systabs = Systab.all
  end

  # GET /systabs/1
  def show
  end

  # GET /systabs/new
  def new
    @systab = Systab.new
  end

  # GET /systabs/1/edit
  def edit
  end

  # POST /systabs
  def create
    @systab = Systab.new(systab_params)

    if @systab.save
      redirect_to @systab, notice: 'Systab was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /systabs/1
  def update
    if @systab.update(systab_params)
      redirect_to @systab, notice: 'Systab was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /systabs/1
  def destroy
    @systab.destroy
    redirect_to systabs_url, notice: 'Systab was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_systab
      @systab = Systab.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def systab_params
      params.require(:systab).permit(:objkey, :objval)
    end
end
