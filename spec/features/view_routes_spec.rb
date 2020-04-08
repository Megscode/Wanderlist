require 'rails_helper'

RSpec.feature 'View routes', type: :feature do
  scenario 'a user can view a list of routes' do
    visit '/'
    click_on 'Routes'
    expect(current_path).to eq '/routes'
    expect(page).to have_content 'Royal Route'
    expect(page).to have_content 'See the Queen'
    expect(page).to have_content 'Royal Route 2'
    expect(page).to have_content 'Sights around Buckingham Palace'
  end

  scenario 'user can see a single route view' do
    visit '/'
    click_on 'Routes'
    first(".route").click_on 'View route'
    expect(current_path).to eq '/routes/1'
    expect(page).to have_content 'Royal Route'
    expect(page).to have_content 'See the Queen'
    expect(page).to have_css("div[id='map']")
  end

end