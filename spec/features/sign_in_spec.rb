require 'rails_helper'

RSpec.feature 'Sign in', type: :feature do
  scenario 'un signed up user unable to create a new route' do
    visit '/routes/new'
    expect(current_path).to eq '/users/sign_in'
  end
end
