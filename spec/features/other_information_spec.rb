require 'rails_helper'

feature 'Other information' do
  # As a wedding guest
  # So that I can choose an appropriate wedding gift
  # I would like to see some advice regarding wedding gifts.
  scenario 'Wedding gift information is displayed' do
    visit other_information_index_path
    expect(page).to have_content("Wedding gifts")
  end

  scenario 'Pre ceremony venue recommendations are displayed' do
    visit other_information_index_path
    expect(page).to have_content("Pre ceremony venues")
  end
end
