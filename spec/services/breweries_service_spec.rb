require 'rails_helper'

RSpec.describe BreweriesService do
  describe 'class methods' do
    it 'can connect to the Open Brewery DB' do
      coordinates = { lat: 35, lng: 127 }
      response = BreweriesService.find_breweries(coordinates, 10)

      expect(response).to be_a(Array)
      expect(response.count).to eq(10)
    end
  end
end