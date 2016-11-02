class SearchController < ApplicationController
  def index
    conn = Faraday.new(:url => 'https://api.bestbuy.com')
    response = conn.get "/v1/stores(area(#{params['q']},25))?format=json&show=storeId,storeType,name&pageSize=15&apiKey=#{ENV['bestbuy_api_key']}"
    @results = JSON.parse(response.body)
    # byebug
  end
end
