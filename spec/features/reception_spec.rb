require 'rails_helper'

feature 'Reception information' do

  # As a wedding guest
  # So that I can attend the evening do
  # I would like to view the evening venue address.

  scenario 'The venue address is displayed' do
    visit '/reception'
    expect(page).to have_content('The East Dulwich Tavern 1 Lordship Lane East Dulwich London SE22 8EW')
  end
end
