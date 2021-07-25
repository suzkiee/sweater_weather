class OpenWeatherService 
  def self.get_forecast_data(coordinates)
    self.request_api("/data/2.5/onecall?lat=#{coordinates[:lat]}&lon=#{coordinates[:lon]}&exclude={part}")
  end

  def self.request_api(path)
    resp = conn("https://api.openweathermap.org/").get(path) do |faraday|
      faraday.params['appid'] = ENV['openweather_key']
    end 
    
    self.parse_json(resp)
  end 

  private 
    def self.parse_json(response)
      JSON.parse(response.body, symbolize_names: true) 
    end

    def self.conn(url)
      Faraday.new(url)
    end
end