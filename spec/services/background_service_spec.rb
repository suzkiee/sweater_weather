require 'rails_helper'

RSpec.describe BackgroundService do

  describe 'class methods' do
    describe '::search_photos' do
      it 'can connect to the Background API', :vcr do 
        response = BackgroundService.search_photos("boston,ma")
        
        expect(response).to be_a(Hash)
      end
    end
  end
end