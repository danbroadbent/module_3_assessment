require 'rails_helper'

describe 'api returns an item' do
  it 'get request to item id endpoint' do
    post '/api/v1/items/?name=user1&description=description1&image_url=image.jpg'
    item = JSON.parse(response.body)
    expect(response.status).to eq(200)
    expect(response['Content-Type']).to eq("application/json; charset=utf-8")
    expect(item['id']).to eq(1)
    expect(item['name']).to eq('user1')
    expect(item['description']).to eq('description1')
    expect(item['image_url']).to eq('image.jpg')
  end
end
