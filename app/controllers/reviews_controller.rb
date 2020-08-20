class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    if @review.save
      redirect_to astrologist_path(@booking.astrologist)
    else render :new
    end
  end

private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
