class BackgroundService

  def self.search_photos(location)
    new.request_api("/search/photos", location)
  end
 
  def request_api(path, location)
    resp = conn("https://api.unsplash.com/photos/").get(path) do |faraday|
      faraday.params['client_id'] = ENV['unsplash_key']
      faraday.params['query'] = location
    end 
    
    parse_json(resp)
  end 

  def parse_json(response)
    JSON.parse(response.body, symbolize_names: true) 
  end

  def conn(url)
    Faraday.new(url)
  end
end