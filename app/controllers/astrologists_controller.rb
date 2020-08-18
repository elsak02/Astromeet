class AstrologistsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update]
  def index
    @astrologists = Astrologist.all
  end

  def show
    @booking = Booking.new
    @astrologist = Astrologist.find(params[:id])
  end

  def new
    @astrologist = Astrologist.new
  end

  def create
    @astrologist = Astrologist.new(strong_params)
    @astrologist.user = current_user
    if @astrologist.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @astrologist = Astrologist.update(strong_params)

    redirect_to astrologist_path(@astrologist)
  end

  private

  def set_params
    @astrologist = Astrologist.find(params[:id])
  end

  def strong_params
    params.require(:astrologist).permit(:experience, :price, :user_id)
  end
end
