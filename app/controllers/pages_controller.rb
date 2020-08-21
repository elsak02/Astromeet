class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: :home
  def home
    @bookings = Booking.all
    @booking = @bookings.sample
    @booking2 = @bookings.sample
    @booking3 = @bookings.sample
    @booking4 = @bookings.sample
    @review = @booking.reviews.sample
    @review2 = @booking2.reviews.sample
    @review3 = @booking3.reviews.sample
    @review4 = @booking4.reviews.sample
  end
end
