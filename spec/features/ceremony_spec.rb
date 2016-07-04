require 'rails_helper'

feature 'Ceremony information' do

  # As a wedding ceremony guest
  # So that I can attend the wedding ceremony
  # I would like to view the ceremony venue address.

  scenario 'The venue address is displayed' do
    visit '/'
    expect(page).to have_content('The Asylum Chapel, Caroline Gardens, Peckham, London, SE15 2SQ')
  end
end
