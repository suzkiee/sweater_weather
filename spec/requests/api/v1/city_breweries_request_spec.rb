require 'rails_helper'

RSpec.describe "City Breweries API" do

  context 'City Breweries Index' do
    it 'happy path: returns details about city and city breweries' do
      get '/api/v1/breweries?location=denver,co&quantity=5'

      body = JSON.parse(response.body, symbolize_names: true)
     require 'pry'; binding.pry
      expect(response).to be_successful
      expect(body).to have_key(:data)
      expect(body[:data]).to have_key(:id)
      expect(body[:data]).to have_key(:type)
      expect(body[:data]).to have_key(:attributes)

      expect(body[:data][:attributes]).to have_key(:destination)
      expect(body[:data][:attributes]).to have_key(:forecast)
      expect(body[:data][:attributes]).to have_key(:breweries)

      expect(body[:data][:attributes][:forecast]).to have_key(:summary)
      expect(body[:data][:attributes][:forecast]).to have_key(:temperature)
      
      expect(body[:data][:attributes][:breweries].count).to eq(5)
    end
  end
end