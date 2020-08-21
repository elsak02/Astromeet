class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @review = Review.first
    @reviews = Review.all[1..-1]
  end
end
