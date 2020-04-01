require 'rails_helper'

RSpec.feature 'Sign up', type: :feature do
  scenario 'new user signs up' do
    visit '/users/sign_up'
    fill_in 'user_email', with: 'test@example.com'
    fill_in 'user_name', with: 'Test Account'
    fill_in 'user_username', with: 'testuser'
    fill_in 'user_password', with: 'password'
    within '.actions' do
      click_on 'Sign up'
    end
  end
end
