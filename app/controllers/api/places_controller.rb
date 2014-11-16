class Api::PlacesController < ApplicationController

protect_from_forgery with: :reset_session

 def index
    @places = Place.all
    render json: @places
  end

  def create
    @place = Place.new(params.require(:place).permit(:name, :city))
    @place.save
    render json: @place
  end

  def update
    @place = Place.find(params[:id])
    @place.update(params.require(:place).permit(:name, :city))
    render json: @place
  end

end
