class AstrologistsController < ApplicationController
  def index
    @astrologists = Astrologist.all
  end

  def show
    @astrologist = Astrologist.find(params[:id])
  end
end
