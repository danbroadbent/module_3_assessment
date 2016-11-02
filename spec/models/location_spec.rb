require 'rails_helper'

describe 'nearby location by zip returns locations instances' do
  it 'takes zip returns locations' do
    locations = Location.nearby_locations('80202')
    expect(locations.class).to eq(Array)
    expect(locations[0].class).to eq(Location)
  end
end
