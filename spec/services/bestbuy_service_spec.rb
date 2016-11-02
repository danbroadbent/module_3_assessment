require 'rails_helper'

describe 'returns bestbuy locations by zip' do
  it 'takes zip returns json' do
    search = BestbuyService.location_search('80202')
    expect(search['total']).to eq(17)
    expect(search['stores'].count).to eq(15)
    expect(search.class).to eq(Hash)
  end
end
