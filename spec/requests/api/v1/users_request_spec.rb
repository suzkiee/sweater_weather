require 'rails_helper'

describe 'Users request' do
  describe 'Users Post' do
    before(:each) do
      User.destroy_all
    end

    it 'happy path: can create a user', :vcr do 
      post '/api/v1/users', params: {
        "email": "ligma1@example.com",
        "password": "password",
        "password_confirmation": "password"
      }, as: :json

      body = JSON.parse(response.body, symbolize_names: true)
  
      expect(response.status).to eq(201)
      expect(body[:data]).to be_a(Hash)
      expect(body[:data]).to have_key(:id)
      expect(body[:data]).to have_key(:attributes)

      expect(body[:data][:attributes]).to be_a(Hash)
      expect(body[:data][:attributes]).to have_key(:email)
      expect(body[:data][:attributes]).to have_key(:api_key)

      expect(body[:data][:attributes][:email]).to eq("ligma1@example.com")
    end

    it 'sad path: cannot create a user' do 
      post '/api/v1/users', params: {
        "email": "ligma1@example.com"
      }, as: :json
      
      body = JSON.parse(response.body, symbolize_names: true)

      expect(response.status).to eq(422)

      expect(body[:error]).to eq("The password or email was invalid.")
    end
  end
end