require 'rails_helper'

RSpec.describe "Background API" do

  context 'Background Index' do
    it 'happy path: returns background', :vcr do
      get '/api/v1/backgrounds?location=boston,ma'

      body = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(body).to have_key(:data)
      expect(body[:data]).to have_key(:attributes)
      expect(body[:data][:attributes]).to have_key(:id)
      expect(body[:data][:attributes]).to have_key(:info)
      expect(body[:data][:attributes]).to have_key(:info)
    end

    it 'sad path: cannot return background', :vcr do
      get '/api/v1/backgrounds?location='

      body = JSON.parse(response.body, symbolize_names: true)
      
      expect(response.status).to eq(400)
      expect(body[:error]).to eq("Cannot find background")
    end
  end
end