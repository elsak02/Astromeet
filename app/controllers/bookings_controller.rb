class BookingsController < ApplicationController
  def new
  end

  def create
    @booking = Booking.new(booking_params)
    @astrologist = Astrologist.find(params[:astrologist_id])
    @booking.user = current_user
    @booking.astrologist = @astrologist
    if @booking.save
      redirect_to astrologist_path(@astrologist)
    else
      render "astrologists/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time)
  end
end
