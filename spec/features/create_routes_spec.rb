require 'rails_helper'

RSpec.feature 'Create a route', type: :feature do
  scenario 'a signed in user can add a place to a route' do
    visit '/'
    sign_up('name', 'username', 'test@example.com', 'password')
    visit '/routes/new'
    fill_in 'route_title', with: 'Title'
    fill_in 'route_description', with: 'Description'
    fill_in 'pac-input', with: 'Holloway, UK'
    click_button 'Add place to route'
    stub_request(:get, "https://maps.googleapis.com/maps/api/js?key=*&libraries=places").
      to_return(body: %Q{
        "results": {
          "name": "Holloway"
        }
      })
    execute_script("$('#add-marker').click()")
    expect(current_path).to eq '/routes/new'
    expect(page).to have_content 'Holloway'
  end

end