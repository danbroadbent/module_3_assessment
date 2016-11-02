class SearchController < ApplicationController
  def index
    @results_count = Location.nearby_locations_count(params['q'])
    @stores = Location.nearby_locations(params['q'])
  end
end
