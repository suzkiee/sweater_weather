require 'rails_helper'

describe 'Users request' do
  describe 'Users Post' do
    it 'happy path: can create a user' do 
      user_details = {
        "email": "ligma1@example.com",
        "password": "password",
        "password_confirmation": "password"
      }
      
      header = { 'CONTENT_TYPE' => 'application/json' }

      post '/api/v1/users', headers: header, params: JSON.generate(user: user_details)

      body = JSON.parse(response.body, symbolize_names: true)

      expect(response.status).to eq(201)
      expect(body[:data]).to be_a(Hash)
      expect(body[:data]).to have_key(:id)
      expect(body[:data]).to have_key(:attributes)

      expect(body[:data][:attributes]).to be_a(Hash)
      expect(body[:data][:attributes]).to have_key(:email)
      expect(body[:data][:attributes]).to have_key(:api_key)
    end
  end
end