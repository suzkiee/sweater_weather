require 'rails_helper'

RSpec.describe "Roadtrip API" do
  describe 'Roadtrip Post' do 
    before(:each) do
      post '/api/v1/users', params: {
        "email": "ligma1@example.com",
        "password": "password",
        "password_confirmation": "password"
      }, as: :json

      @user_data = JSON.parse(response.body, symbolize_names: true)
    end

    it 'happy path: returns road trip info' do
      post '/api/v1/road_trip', params: {
        "origin": "Alexandria,VA",
        "destination": "Manassas,VA",
        "api_key": @user_data[:data][:attributes][:api_key]
      }, as: :json

      body = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(body[:data]).to have_key(:id)
      expect(body[:data]).to have_key(:attributes)

      expect(body[:data][:attributes]).to have_key(:id) 
    end
  end
end