class Location
  attr_reader :name, :city, :distance, :phone, :type

  def initialize(data)
    @name =     data['name']
    @city =     data['city']
    @distance = data['distance']
    @phone =    data['phone']
    @type =     data['type']
  end

  def self.nearby_locations(zip)
    results = BestbuyService.location_search(zip)
    locations = results['stores']
    locations.each do |location|
      Location.new(location)
    end
  end
end
