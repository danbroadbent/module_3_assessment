require 'rails_helper'

describe 'api returns an item' do
  it 'get request to item id endpoint' do
    Item.create(id: 1, name: 'user 1', description: 'description 1', image_url: 'image.url')
    get '/api/v1/items/1'
    item = JSON.parse(response.body)
    expect(response.status).to eq(200)
    expect(response['Content-Type']).to eq("application/json; charset=utf-8")
    expect(item['id']).to eq(1)
    expect(item['name']).to eq('user 1')
    expect(item['description']).to eq('description 1')
    expect(item['image_url']).to eq('image.url')
  end
end
