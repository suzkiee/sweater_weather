class BackgroundService

  def self.search_photos(location)
    new.request_api("/search/photos", location)
  end
 
  def request_api(path, location)
    resp = conn("https://api.unsplash.com/").get(path) do |faraday|
      faraday.headers['Accept-Version'] = 'v1'
      faraday.params['client_id'] = ENV['unsplash_key']
      faraday.params['query'] = location
      faraday.params['per_page'] = 1 
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