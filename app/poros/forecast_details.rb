class ForecastDetails 
  attr_reader :id,
              :current_weather,
              :daily_weather,
              :hourly_weather

  def initialize(details) 
    @id = details[:id] 
    @current_weather = details[:current]
    @daily_weather = details[:daily].first
    @hourly_weather = details[:hourly].first
  end
end