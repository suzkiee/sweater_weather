require 'rails_helper'

RSpec.describe RoadTripFacade do 
  describe 'class methods' do
    describe '::get_road_trip' do 
      it 'happy path: returns road trip information', :vcr do
        rtd = RoadTripFacade.road_trip("denver,co", "estes park,co")
   
        expect(rtd).to be_a(RoadTripDetails)
        expect(rtd.id).to eq(nil)
        expect(rtd.start_city).to eq('denver,co')
        expect(rtd.end_city).to eq('estes park,co')
        
        expect(rtd.weather_at_eta).to have_key(:temperature)
        expect(rtd.weather_at_eta).to have_key(:conditions)
      end

      it 'sad path: returns less information if the road trip is impossible', :vcr do
        rtd = RoadTripFacade.road_trip("denver,co", "London,UK")
        
        expect(rtd).to be_a(RoadTripDetails)
        expect(rtd.start_city).to eq('denver,co')
        expect(rtd.end_city).to eq('London,UK')
        expect(rtd.travel_time).to eq('impossible route')
        expect(rtd.weather_at_eta).to have_key(:temperature)
        expect(rtd.weather_at_eta).to have_key(:conditions)

        expect(rtd.weather_at_eta[:temperature]).to eq(nil)
        expect(rtd.weather_at_eta[:conditions]).to eq(nil)
      end
    end
  end
end