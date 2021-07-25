class MapQuestService

  def self.get_coordinates(location)
    request_api("/geocoding/v1/address?location=#{location}")
  end
 
  def self.request_api(path)
    resp = conn("http://www.mapquestapi.com").get(path) do |faraday|
      faraday.params['key'] = ENV['mapquest_key']
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