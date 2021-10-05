class RoadTripDetails
  attr_reader :id,
              :start_city,
              :end_city,
              :travel_time,
              :weather_at_eta

  def initialize(details)
    @id = nil
    @start_city = details[:start_city]
    @end_city = details[:end_city]
    @travel_time = format_time(details)
    @weather_at_eta = format_weather(details)
  end

  private 
    def format_weather(details)
      if details[:time].nil? 
        {
          temperature: nil,
          conditions: nil 
        }
      else
        eta_forecast = details[:weather].hourly_weather.find do |hour|
          hour[:time].to_i == details[:time].hour
        end
        {
          temperature: "#{eta_forecast[:temperature].round(1)} F",
          conditions: eta_forecast[:conditions]
        }

      end
      {
        temperature: "#{eta_forecast[:temperature].round(1)} F",
        conditions: eta_forecast[:conditions]
      }
    end
  end

    def format_time(details)
      if details[:time].nil?
        "impossible route"
      else details[:time] 
        "#{details[:travel_time][0]} hours, #{details[:travel_time][1]} minutes"
      end
    end
  end
end
