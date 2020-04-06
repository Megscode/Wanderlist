require 'rails_helper'

RSpec.feature 'Sign in', type: :feature do
  scenario 'External request' do
    uri = URI('https://maps.googleapis.com/maps/api/js')

    response = Net::HTTP.get(uri)

    expect(response).to be_an_instance_of(String)
  end
end