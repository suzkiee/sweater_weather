class RoadTripFacade 
  def self.road_trip(start_city, end_city)
    forecast = WeatherFacade.forecast(end_city)
    route = MapQuestService.find_route(start_city, end_city)
    travel_time = check_travel_time(route)
    time = check_time(route)
   
    details = {
      start_city: start_city,
      end_city: end_city,
      travel_time: travel_time, 
      weather: forecast,
      time: time
    }
    
    RoadTripDetails.new(details)
  end

  def self.check_travel_time(route)
    if route[:route][:routeError][:errorCode] == (-400) 
      route[:route][:formattedTime].split(':')
    else 
      nil
    end
  end

  def self.check_time(route)
    if route[:route][:routeError][:errorCode] == (-400)
      Time.now + route[:route][:realTime]
    else 
      nil
    end
  end
end