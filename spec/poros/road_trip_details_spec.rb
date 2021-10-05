require "rails_helper"

RSpec.describe RoadTripDetails do
  describe 'class methods' do
    describe '::initialize' do
      it 'happy path: creates road trip details object', :vcr do
        forecast = WeatherFacade.forecast("estes park,co")

        details = {
          :start_city=>"denver,co",
          :end_city=>"estes park,co",
          :travel_time=>["01", "22", "49"],
          :weather=> forecast,
          :time=> Time.parse("2021-10-05 19:57:36.535027 -0400") }

        rtd = RoadTripDetails.new(details)
        
        expect(rtd.id).to eq(nil)
        expect(rtd.start_city).to eq('denver,co')
        expect(rtd.end_city).to eq('estes park,co')
        expect(rtd.travel_time).to eq('01 hours, 22 minutes')
        expect(rtd.weather_at_eta[:temperature]).to eq('69.2 F')
        expect(rtd.weather_at_eta[:conditions]).to eq('few clouds')
      end

      it 'sad path: returns different message if the two cities are too far apart', :vcr do
        forecast = WeatherFacade.forecast("london,uk")

        details = {
          :start_city=>"denver,co",
          :end_city=>"london,uk",
          :travel_time=>nil,
          :weather=> forecast,
          :time=>nil }

        rtd = RoadTripDetails.new(details)
        
        expect(rtd.id).to eq(nil)
        expect(rtd.start_city).to eq('denver,co')
        expect(rtd.end_city).to eq('london,uk')
        expect(rtd.travel_time).to eq('impossible route')
        expect(rtd.weather_at_eta[:temperature]).to eq(nil)
        expect(rtd.weather_at_eta[:conditions]).to eq(nil)
      end
    end
  end
end