require 'rails_helper'

describe CityBreweriesFacade do
  describe 'class methods' do
    context '.get_city_breweries' do
      it 'happy path: returns city details and list of breweries' do
        cbd = CityBreweriesFacade.get_city_breweries('denver,co', 10)
    
        expect(cbd).to be_a(CityBreweriesDetails)
      end
    end
  end
end