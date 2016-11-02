require 'rails_helper'

RSpec.feature 'search returns nearby locations' do
  scenario 'user enters a zip into the search' do
    visit '/'
    fill_in 'Search', with: '80202'
    click_on 'Search'

    expect(current_path).to eq('/search')
    expect(page).to have_content('Stores within 25 miles of 80202:')
    expect(page).to have_content('17 Total Stores')
    expect(page).to have_selector('.store', count: 15)
    expect(page).to have_content('Name: Cherry Creek Shopping Center')
    expect(page).to have_content('City: Denver')
    expect(page).to have_content('Distance: 3.25')
    expect(page).to have_content('Phone Number: 303-270-9189')
    expect(page).to have_content('Store Type: Mobile')
  end
end
