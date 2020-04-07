require 'rails_helper'

RSpec.feature 'voting', type: :feature do
  scenario 'routes have a link to vote' do
    visit '/'
    sign_up('name', 'username', 'test@example.com', 'password')
    visit '/'
  end

  scenario 'clicking vote will increase a route\'s points by 1' do
  end

  scenario 'a user can vote on other user\'s routes' do
  end

  scenario 'a user cannot vote for their own routes' do
  end
end