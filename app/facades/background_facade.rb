class BackgroundFacade
  def self.get_background(location)
    background = BackgroundService.search_photos(location)
    BackgroundDetails.new(background, location)
  end
end