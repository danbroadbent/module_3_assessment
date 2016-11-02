class SearchController < ApplicationController
  def index
    @results = BestbuyService.location_search(params['q'])
    @stores = Location.nearby_locations(params['q'])
  end
end
