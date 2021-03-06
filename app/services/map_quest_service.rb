class MapQuestService < BaseService
  def self.get_coordinates(location)
    new.request_api("/geocoding/v1/address?location=#{location}")
  end

  def self.find_route(start_city, end_city)
    new.request_api("/directions/v2/route?from=#{start_city.downcase}&to=#{end_city.downcase}")
  end

  def request_api(path)
    resp = conn('http://www.mapquestapi.com').get(path) do |faraday|
      faraday.params['key'] = ENV['MAPQUEST_KEY']
    end
    parse_json(resp)
  end
end
