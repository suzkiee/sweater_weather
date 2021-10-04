class BackgroundService < BaseService
  def self.search_photos(location)
    new.request_api('/search/photos', location)
  end

  def request_api(path, location)
    resp = conn('https://api.unsplash.com/').get(path) do |faraday|
      faraday.headers['Accept-Version'] = 'v1'
      faraday.params['client_id'] = ENV['UNSPLASH_KEY']
      faraday.params['query'] = location
      faraday.params['per_page'] = 1
    end
    parse_json(resp)
  end
end
