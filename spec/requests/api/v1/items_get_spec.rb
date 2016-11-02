require 'rails_helper'

describe 'api returns a list of items' do
  it 'get request to items endpoint' do
    get '/api/v1/items'
    item.new(id: 1, name: 'user 1', description: 'description 1', image_url: 'image.url')
    item.new(id: 2, name: 'user 2', description: 'description 2', image_url: 'image2.url')
    item.new(id: 3, name: 'user 3', description: 'description 3', image_url: 'image3.url')
    items = JSON.parse(response.body)
    expect(response_status).to eq(200)
    # expect(response.class).to eq(JSON)
    expect(items.count).to eq(3)
    expect(items[0].id).to eq(1)
    expect(items[0].name).to eq('user 1')
    expect(items[0].description).to eq('description 1')
    expect(items[0].image_url).to eq('image.url')
    # When I send a GET request to /api/v1/items
    # I receive a 200 JSON response containing all items
    # And each item has an id, name, description, and image_url but not the created_at or updated_at
  end
end
