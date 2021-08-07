require 'rails_helper'

RSpec.describe WeatherFacade do
  describe 'class methods' do
    it '::forecast' do
      VCR.use_cassette("weather_facade_forecast") do 
        forecast = WeatherFacade.forecast('boston, ma')
        
        expect(forecast).to be_a(ForecastDetails)
        expect(forecast.current_weather).to be_a(Hash)
        expect(forecast.daily_weather).to be_a(Array)
      end
    end 
  end
end