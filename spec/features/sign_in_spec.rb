require 'rails_helper'

RSpec.feature 'Sign in', type: :feature do
  scenario 'existing user can sign in' do
    visit '/'
    sign_up('name', 'username', 'test@example.com', 'password')
    click_on 'Logout'
    log_in('test@example.com', 'password')
    expect(page).to have_content('Wanderlist')
    expect(current_path).to eq '/'
  end

  scenario 'user cannot sign in without signing up first' do
    visit '/'
    log_in('email@example.com', 'password')
    expect(page).to have_content('Invalid Email or password')
  end

  scenario 'user is able to view routes without signing in' do
    visit '/routes'
    expect(page).to have_content('Routes')
  end

  scenario 'user unable to create a new route unless signed in' do
    visit '/routes/new'
    expect(current_path).to eq '/users/sign_in'
  end

  

end
