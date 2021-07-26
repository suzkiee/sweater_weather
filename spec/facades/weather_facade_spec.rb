require 'rails_helper'

RSpec.describe WeatherFacade do
  describe 'class methods' do
    it '::forecast' do
      VCR.use_cassette("weather_forecast") do 
        forecast = WeatherFacade.forecast('boston, ma')
      
        expect(forecast).to have_key(:lat)
        expect(forecast).to have_key(:lon)
        expect(forecast).to have_key(:timezone)
        expect(forecast).to have_key(:timezone_offset)
        expect(forecast).to have_key(:lat)
        expect(forecast).to have_key(:current)
        expect(forecast).to have_key(:minutely)
        expect(forecast).to have_key(:hourly)
      end
    end 
  end
end