class Api::V1::BreweriesController < ApplicationController
  def index 
    city_breweries = CityBreweriesFacade.get_city_breweries(params[:location], params[:quantity]) 
    
    if params[:quantity].to_i <= 0
      render json: { error: "Quantity cannot be less than 0" }, status: 400
    else 
      render json: CityBreweriesSerializer.new(city_breweries), status: 200
    end
  end
end