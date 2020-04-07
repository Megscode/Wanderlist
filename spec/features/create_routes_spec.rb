require 'rails_helper'

RSpec.feature 'Create routes', type: :feature do
  scenario 'a user creates a route' do
    visit '/'
    sign_up('name', 'username', 'test@example.com', 'password')
    visit '/routes/new'

    fill_in 'route_title', with: 'test title'
    fill_in 'route_description', with: 'test description'
    fill_in 'pac-input', with: 'Tesco Superstore, Morning Lane, London, UK'
    click_on "add-marker"
    fill_in 'pac-input', with: 'Tesco Metro, Well Street, London, UK'
    save_and_open_page
    click_on "submit-form"

    expect(page).to have_current_path '/routes/1'
    # expect(page).to have_content 'Name: test title'
    # expect(page).to have_content 'Points: 1'
    # expect(page).to have_content 'Description: test description'

  end
end