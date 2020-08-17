class AstrologistsController < ApplicationController
  def index
    @astrologists = Astrologist.all
  end
end
