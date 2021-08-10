require 'rails_helper'

RSpec.describe "Sessions API" do
  describe 'Sessions Post' do
    before(:each) do
      post '/api/v1/users', params: {
        "email": "ligma1@example.com",
        "password": "password",
        "password_confirmation": "password"
      }, as: :json
      
      body = JSON.parse(response.body, symbolize_names: true)

      @user = User.find(body[:data][:id].to_i)
    end
    
    it 'happy path: logs a user in' do
      post '/api/v1/sessions', params: { 
        "email": "ligma1@example.com",
        "password": "password"
      }, as: :json 

      body = JSON.parse(response.body, symbolize_names: true)

      expect(body[:data][:attributes][:email]).to eq("ligma1@example.com")
      expect(body[:data][:attributes][:api_key]).to eq(@user.api_key)
    end
  end
end 