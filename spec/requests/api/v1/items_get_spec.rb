require 'rails_helper'

describe 'api returns a list of items' do
  it 'get request to items endpoint' do
    Item.create(id: 1, name: 'user 1', description: 'description 1', image_url: 'image.url')
    Item.create(id: 2, name: 'user 2', description: 'description 2', image_url: 'image2.url')
    Item.create(id: 3, name: 'user 3', description: 'description 3', image_url: 'image3.url')
    get '/api/v1/items'
    items = JSON.parse(response.body)
    expect(response.status).to eq(200)
    expect(response['Content-Type']).to eq("application/json; charset=utf-8")
    expect(items.count).to eq(3)
    expect(items[0]['id']).to eq(1)
    expect(items[0]['name']).to eq('user 1')
    expect(items[0]['description']).to eq('description 1')
    expect(items[0]['image_url']).to eq('image.url')
  end
end
