class BreweriesService

  def self.find_breweries(location, quantity)
    new.request_api("/breweries?by_city=#{location}&per_page=#{quantity}")
  end
 
  def request_api(path)
    response = Faraday.new("https://api.openbrewerydb.org/").get(path)
    JSON.parse(response.body, symbolize_names: true) 
  end 

  def conn(url)
    Faraday.new(url)
  end
end