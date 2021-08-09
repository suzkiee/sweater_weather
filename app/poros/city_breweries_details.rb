class CityBreweriesDetails 
  attr_reader :destination,
              :forecast,
              :breweries

  def initialize(details)
    @destination = details[:destination]
    @forecast = details[:forecast]
    @breweries = details[:breweries]
  end
end