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
# When I send a POST request to /api/v1/items with a name, description, and image_url
# I receive a 201 JSON response if the record is successfully created
# And I receive a JSON response containing the id, name, description, and image_url but not the created_at or updated_at
