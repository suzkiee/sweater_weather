require "rails_helper"

RSpec.describe BackgroundDetails do
  describe 'class methods' do
    describe '::initialize' do
      it 'creates background details object' do
        response = File.read('spec/fixtures/background_service/background_details.json')
        background_details = JSON.parse(response, symbolize_names: true) 
        
        bd = BackgroundDetails.new(background_details, 'boston,ma')
  
        expect(bd).to be_a(BackgroundDetails)
        expect(bd.id).to eq(nil)
        expect(bd.background).to be_a(Hash)
        expect(bd.background).to have_key(:location)
        expect(bd.background).to have_key(:image_url)
        expect(bd.background).to have_key(:credit)

        expect(bd.background).to_not have_key(:total)
        expect(bd.background).to_not have_key(:total_pages)
        expect(bd.background).to_not have_key(:categories)

        expect(bd.background[:credit]).to have_key(:source)
        expect(bd.background[:credit]).to have_key(:author)
        expect(bd.background[:credit]).to have_key(:logo)
      end
    end
  end
end 