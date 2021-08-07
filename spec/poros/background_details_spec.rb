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
        expect(bd.info).to be_a(Hash)
        expect(bd.info).to have_key(:location)
        expect(bd.info).to have_key(:image_url)
        expect(bd.info).to have_key(:credit)

        expect(bd.info).to_not have_key(:total)
        expect(bd.info).to_not have_key(:total_pages)
        expect(bd.info).to_not have_key(:categories)

        expect(bd.info[:credit]).to have_key(:source)
        expect(bd.info[:credit]).to have_key(:author)
        expect(bd.info[:credit]).to have_key(:logo)
      end
    end
  end
end 