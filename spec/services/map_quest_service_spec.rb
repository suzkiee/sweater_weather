require 'rails_helper'

RSpec.describe MapQuestService do
  describe 'class methods' do
    describe '::get_coordinates' do
      it 'returns coordinates for given location', :vcr do
        response = MapQuestService.get_coordinates("boston,ma")
        
        expect(response).to be_a(Hash)
        expect(response).to have_key(:info)
        expect(response[:info]).to have_key(:statuscode)
        expect(response[:results].first).to have_key(:providedLocation)
      end
    end

    describe '::find_route' do  
      it 'returns the route between two cities', :vcr do
        response = MapQuestService.find_route('Denver, CO', 'Estes Park, CO')
        
        expect(response).to be_a(Hash)
        expect(response[:route]).to be_a(Hash)
        expect(response[:route]).to have_key(:distance)
        expect(response[:route]).to have_key(:realTime)
        expect(response[:route][:distance]).to eq(71.433)
      end
    end 
  end
end
