class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @astrologist = Astrologist.find(params[:astrologist_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @astrologist = Astrologist.find(params[:astrologist_id])
    @booking.user = current_user
    @booking.astrologist = @astrologist
    if @booking.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time)
  end
end
