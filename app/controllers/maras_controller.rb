class MarasController < ApplicationController

  def index
    @maras = SapMara.where(matkl: 'AD')
                 .select(:matnr, :brgew)
                 .page(params[:page])
                 .per(10)
  end

end
