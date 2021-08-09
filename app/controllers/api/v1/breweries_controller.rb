class Api::V1::BreweriesController < ApplicationController
  def index 
    city_breweries = CityBreweriesFacade.get_city_breweries(params[:location], params[:quantity])  
    render json: CityBreweriesSerializer.new(city_breweries), status: 200
  end
end