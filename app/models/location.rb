class Location
  attr_reader :name, :city, :distance, :phone, :type

  def initialize(data)
    @name =     data['name']
    @city =     data['city']
    @distance = data['distance']
    @phone =    data['phone']
    @type =     data['storeType']
  end

  def self.nearby_locations(zip)
    results = BestbuyService.location_search(zip)
    locations = results['stores']
    locations.map do |location|
      Location.new(location)
    end
  end

  def self.nearby_locations_count(zip)
    results = BestbuyService.location_search(zip)
    location_count = results['total']
  end
end
