class BreweriesService

  def self.find_breweries(coordinates, quantity)
    new.request_api("/breweries?by_dist=#{coordinates[:lat]},#{coordinates[:lng]}&per_page=#{quantity}")
  end
 
  def request_api(path)
    response = Faraday.new("https://api.openbrewerydb.org/").get(path)
    JSON.parse(response.body, symbolize_names: true) 
  end 

  def conn(url)
    Faraday.new(url)
  end
end