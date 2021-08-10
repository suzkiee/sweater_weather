require 'rails_helper'

RSpec.describe MapQuestFacade do 
  describe 'class methods' do
    describe '::coordinates' do
      it 'returns latitude and longitude', :vcr do
        coordinates = MapQuestFacade.coordinates('boston, ma') 
          
        expect(coordinates).to be_a(Hash)
        expect(coordinates).to have_key(:lat)
        expect(coordinates).to have_key(:lng)
        expect(coordinates).to_not have_key(:locations)
      end
    end
  end
end

