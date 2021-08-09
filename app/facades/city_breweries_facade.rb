class CityBreweriesFacade 
  def self.get_city_breweries(location, quantity)
    coordinates = MapQuestFacade.coordinates(location)
    breweries = BreweriesService.find_breweries(coordinates, quantity)
    data = OpenWeatherService.get_forecast_data(coordinates)
    forecast = ForecastDetails.new(data)

    farenheit = ((forecast.current_weather[:temperature] - 273.15) * 9/5 + 32).round
  
    city_breweries = breweries.map do |brewery|
      {id: brewery[:id],
       name: brewery[:name],
       brewery_type: brewery[:brewery_type]}
    end

    details = {
      destination: location, 
      forecast: {
        summary: forecast.current_weather[:conditions],
        temperature: "#{farenheit} F"
      },
      breweries: city_breweries
    }

    CityBreweriesDetails.new(details)
  end
end