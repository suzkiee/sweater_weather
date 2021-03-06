class OpenWeatherService < BaseService
  def self.get_forecast_data(coordinates)
    new.request_api("/data/2.5/onecall?lat=#{coordinates[:lat]}&lon=#{coordinates[:lng]}&exclude={part}")
  end

  def request_api(path)
    resp = conn('https://api.openweathermap.org/').get(path) do |faraday|
      faraday.params['appid'] = ENV['OPENWEATHER_KEY']
      faraday.params['units'] = 'imperial'
    end
    parse_json(resp)
  end
end
