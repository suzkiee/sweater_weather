require 'rails_helper'

describe BackgroundFacade, :vcr do
  describe 'class methods' do
    context '.get_background' do
      it 'happy path: get background' do
        background = BackgroundFacade.get_background('denver,co')

        expect(background).to be_a(BackgroundDetails)
        expect(background.info).to have_key(:location)
        expect(background.info).to have_key(:image_url)
        expect(background.info).to have_key(:credit)
        expect(background.info[:credit]).to have_key(:source)
        expect(background.info[:credit]).to have_key(:author)
      end

      it 'sad path: location missing' do
        background = BackgroundFacade.get_background('')

        expect(background).to be_an_instance_of(String)
        expect(background).to eq('Location Invalid')
      end
    end
  end
end