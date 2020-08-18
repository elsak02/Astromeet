class AstrologistsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update]
  def index
    @astrologists = Astrologist.all
  end

  def show
    @booking = Booking.new
    @astrologist = Astrologist.find(params[:id])
  end

  def edit
  end

  def update
    @astrologist = Astrologist.update(astrologist_params)

    redirect_to astrologist_path(@astrologist)
  end

  private

  def set_params
    @astrologist = Astrologist.find(params[:id])
  end

  def astrologist_params
    params.require(:astrologist).permit(:experience, :price)
  end
end
