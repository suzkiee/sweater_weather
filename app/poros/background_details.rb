class BackgroundDetails 
  attr_reader :id,
              :background

  def initialize(details, location)
    @id = nil
    @background = get_background(details, location)
  end

  private
    def get_background(details, location)
      {
        location: location,
        image_url: details[:results][0][:urls][:regular],
        credit: {
          source: 'unsplash.com',
          author: details[:results][0][:user][:username],
          logo: details[:results][0][:user][:profile_image][:medium]
        }
      }
    end
end