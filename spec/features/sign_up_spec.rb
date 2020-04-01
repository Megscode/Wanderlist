require 'rails_helper'

RSpec.feature 'Sign up', type: :feature do
  scenario 'new user signs up' do
    visit '/'
    click_on 'Sign up'
    sign_up('name', 'username', 'test@example.com', 'password')
    expect(page).to have_content 'test@example.com'
    expect(current_path).to eq '/'
  end

  scenario 'new user signs up' do
    visit '/'
    click_on 'Sign up'
    sign_up('name', 'username', 'testexample.com', 'password')
    expect(page).to have_content 'Email is invalid'
  end
end
