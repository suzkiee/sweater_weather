require "rails_helper"

RSpec.describe RoadTripDetails do
  describe 'class methods' do
    describe '::initialize' do
      it 'happy path: creates road trip details object', :vcr do
        forecast = WeatherFacade.forecast("estes park,co")
        time = Time.now + 5605

        details = {
          :start_city=>"denver,co",
          :end_city=>"estes park,co",
          :travel_time=>["01", "22", "49"],
          :weather=> forecast,
          :time=> time }

        rtd = RoadTripDetails.new(details)
        
        expect(rtd.id).to eq(nil)
        expect(rtd.start_city).to eq('denver,co')
        expect(rtd.end_city).to eq('estes park,co')
        expect(rtd.travel_time).to eq('01 hours, 22 minutes')
        expect(rtd.weather_at_eta[:temperature]).to eq('81.6 F')
        expect(rtd.weather_at_eta[:conditions]).to eq('few clouds')
      end
    end
  end
end