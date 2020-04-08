require 'rails_helper'

RSpec.feature 'Sign up', type: :feature do
  scenario 'new user signs up' do
    visit '/'
    sign_up('name', 'username', 'test3@example.com', 'password')
    expect(page).to have_content 'test3@example.com'
    expect(current_path).to eq '/'
  end

  scenario 'user must enter valid email' do
    visit '/'
    sign_up('name', 'username', 'testexample.com', 'password')
    expect(page).to have_content 'Email is invalid'
  end

  scenario 'user cannot sign up if the email already exists' do
    visit '/'
    sign_up('name', 'username', 'test@example.com', 'password')
    expect(page).to have_content 'Email has already been taken'
  end
end
