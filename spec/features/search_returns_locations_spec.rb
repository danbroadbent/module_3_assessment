require 'rails_helper'

RSpec.feature 'search returns nearby locations' do
  scenario 'user enters a zip into the search' do
    # When I visit "/"
    visit '/'
    fill_in 'Search', with: '80202'
    click_on 'Search'
    # And I fill in a search box with 80202 and click search
    expect(current_path).to eq('/search')
    # Then my current path should be /search ignoring pars
    expect(page).to have_content('Stores within 25 miles of 80202:')
    # And I should see stores within 25 miles of 80202
    expect(page).to have_content('17 Total Stores')
    # And I should see a message that says 17 Total Stores
    # within how many childeren?
    # And I should see exactly 15 results
    expect(page).to have_content('name')
    expect(page).to have_content('city')
    expect(page).to have_content('distance')
    expect(page).to have_content('phone')
    expect(page).to have_content('store type')
    # And I should see the long name, city, distance, phone number and store type for each of the 15 results
  end
end
