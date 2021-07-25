require 'rails_helper'

RSpec.describe MapQuestFacade do 
describe 'class methods' do
  describe '::coordinates' do
    it 'happy path: returns latitude and longitude' do
      VCR.use_cassette("map_quest_coordinates") do
        coordinates = MapQuestFacade.coordinates('boston, ma') 
        
        expect(coordinates).to be_a(Hash)
        expect(coordinates).to have_key(:lat)
        expect(coordinates).to have_key(:lng)
        expect(coordinate).to_not have_key(:locations)
      end
    end 
  end
end
end 
