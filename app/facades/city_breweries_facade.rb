class CityBreweriesFacade 

  def self.get_city_breweries(location, quantity)
    coordinates = MapQuestFacade.coordinates(location)
    breweries = BreweriesService.find_breweries(coordinates, quantity)
    data = OpenWeatherService.get_forecast_data(coordinates)
    forecast = ForecastDetails.new(data)
    farenheit = convert_to_f(forecast.current_weather[:temperature])
    city_breweries = format_breweries(breweries)
    details = format_details(location, forecast, farenheit, city_breweries)
    CityBreweriesDetails.new(details)
  end
  
  def self.convert_to_f(kelvin)
    ((kelvin - 273.15) * 9/5 +32).round
  end

  def self.format_breweries(breweries)
    breweries.map do |brewery|
      {
       id: brewery[:id],
       name: brewery[:name],
       brewery_type: brewery[:brewery_type]
      }
    end
  end

  def self.format_details(location, forecast, farenheit, city_breweries)
    {
      destination: location, 
      forecast: {
        summary: forecast.current_weather[:conditions],
        temperature: "#{farenheit} F"
      },
      breweries: city_breweries
    }
  end
end