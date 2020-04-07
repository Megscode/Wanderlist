require 'rails_helper'

RSpec.feature 'Sign out', type: :feature do
  scenario 'a user can sign out' do
    visit '/'
    sign_up('name', 'username', 'test@example.com', 'password')
    click_on 'Logout'
    expect(page).to have_content 'Signed out successfully.'
  end
end
