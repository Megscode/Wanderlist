require 'rails_helper'

RSpec.feature 'Block external request', type: :feature do
  scenario 'External request' do
    uri = URI('https://maps.googleapis.com/maps/api/js')

    response = Net::HTTP.get(uri)

    expect(response).to be_an_instance_of(String)
  end
end