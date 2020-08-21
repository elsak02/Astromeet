class AstrologistsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = " \
        astrologists.speciality ILIKE :query \
        OR users.first_name ILIKE :query \
        OR users.last_name ILIKE :query \
      "
      @astrologists = Astrologist.joins(:user).where(sql_query, query: "%#{params[:query]}%").sort_by {|astrologist| astrologist.rating_average }.reverse
    else
      @astrologists = Astrologist.all.sort_by {|astrologist| astrologist.rating_average }.reverse
    end
  end

  def show
    @booking = Booking.new
    @unavailable_dates = @astrologist.bookings.map do |booking|
      booking.date
    end
  end

  def dashboard
    @astrologist = Astrologist.find_by(user: current_user)
  end

  def new
    @astrologist = Astrologist.new
  end

  def create
    @astrologist = Astrologist.new(strong_params)
    @astrologist.user = current_user
    if @astrologist.save
      redirect_to astrologist_path(@astrologist)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @astrologist.update(strong_params)
    redirect_to astrologist_path(@astrologist)
  end

  private

  def set_params
    @astrologist = Astrologist.find(params[:id])
  end

  def strong_params
    params.require(:astrologist).permit(:experience, :price, :user_id, speciality: [])
  end
end
