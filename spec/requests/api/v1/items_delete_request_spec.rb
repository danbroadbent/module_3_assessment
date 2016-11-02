require 'rails_helper'

describe 'api deletes an item' do
  it 'delete request to item id endpoint' do
    Item.create(id: 1, name: 'user 1', description: 'description 1', image_url: 'image.url')
    delete '/api/v1/items/1'
    expect(response.status).to eq(204)
    # expect(response['Content-Type']).to eq("application/json; charset=utf-8")
  end
end
