class Api::V1::ForecastController < ApplicationController
  def index
    forecast = WeatherFacade.forecast(params[:location])
    if forecast.nil?
      render json: { error: error_message }, status: :bad_request
    else
      render json: ForecastSerializer.new(forecast), status: :ok
    end
  end
end
