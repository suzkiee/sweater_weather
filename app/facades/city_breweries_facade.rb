class CityBreweriesFacade 

  def self.get_city_breweries(location, quantity)
    coordinates = MapQuestFacade.coordinates(location)
    breweries = BreweriesService.find_breweries(coordinates, quantity)
    data = OpenWeatherService.get_forecast_data(coordinates)
    forecast = ForecastDetails.new(data)
    farenheit = new.convert_to_f(forecast.current_weather[:temperature])
    city_breweries = new.format_breweries(breweries)
    details = new.format_details(location, forecast, farenheit, city_breweries)
    CityBreweriesDetails.new(details)
  end
  
  def convert_to_f(kelvin)
    ((kelvin - 273.15) * 9/5 +32).round
  end

  def format_breweries(breweries)
    breweries.map do |brewery|
      {
       id: brewery[:id],
       name: brewery[:name],
       brewery_type: brewery[:brewery_type]
      }
    end
  end

  def format_details(location, forecast, farenheit, city_breweries)
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