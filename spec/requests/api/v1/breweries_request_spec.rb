require 'rails_helper'

RSpec.describe "Breweries API" do

  context 'Breweries Index' do
    it 'happy path: returns details about city and city breweries', :vcr do
      get '/api/v1/breweries?location=denver,co&quantity=5'

      body = JSON.parse(response.body, symbolize_names: true)
      
      expect(response).to be_successful
      expect(body).to have_key(:data)
      expect(body[:data]).to have_key(:id)
      expect(body[:data]).to have_key(:type)
      expect(body[:data]).to have_key(:attributes)
      
      expect(body[:data][:id]).to eq("null")
      expect(body[:data][:attributes]).to have_key(:destination)
      expect(body[:data][:attributes]).to have_key(:forecast)
      expect(body[:data][:attributes]).to have_key(:breweries)

      expect(body[:data][:attributes][:destination]).to eq("denver,co")

      expect(body[:data][:attributes][:forecast]).to have_key(:summary)
      expect(body[:data][:attributes][:forecast]).to have_key(:temperature)
      expect(body[:data][:attributes][:forecast][:summary]).to eq("clear sky")
      expect(body[:data][:attributes][:forecast][:temperature]).to eq("-327 F")

      expect(body[:data][:attributes][:breweries].count).to eq(5)
      expect(body[:data][:attributes][:breweries][0][:id]).to eq(8962)
      expect(body[:data][:attributes][:breweries][0][:name]).to eq("Black Beak Brewing")
      expect(body[:data][:attributes][:breweries][0][:brewery_type]).to eq("planning")
    end
  end

  it 'sad path: quantity must be greater than 0' do
    get '/api/v1/breweries?location=denver,co&quantity=0'

    body = JSON.parse(response.body, symbolize_names: true)
 
    expect(response.status).to eq(400)
    expect(body[:error]).to eq("Quantity cannot be less than 0") 
  end
end