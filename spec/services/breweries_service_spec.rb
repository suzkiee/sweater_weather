require 'rails_helper'

RSpec.describe BreweriesService do
  describe 'class methods' do
    it 'can connect to the Open Brewery DB' do
      response = BreweriesService.find_breweries("boston,ma", 10)
        
      expect(response).to be_a(Array)
      expect(response.count).to eq(10)
    end
  end
end