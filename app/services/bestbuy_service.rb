class BestbuyService
  def self.location_search(zip)
    conn = Faraday.new(:url => 'https://api.bestbuy.com')
    response = conn.get "/v1/stores(area(#{zip},25))?format=json&show=name,city,distance,phone,storeType&pageSize=15&apiKey=#{ENV['bestbuy_api_key']}"
    JSON.parse(response.body)
  end
end
