require 'rails_helper'

feature 'Reception information' do

  # As a wedding guest
  # So that I can attend the evening do
  # I would like to view the evening venue address.

  scenario 'The venue address is displayed' do
    visit '/reception'
    expect(page).to have_content('The East Dulwich Tavern 1 Lordship Lane East Dulwich London SE22 8EW')
  end

  # As a wedding guest
  # So that I can travel to and from the wedding venues
  # I would like to view the transport options.

  scenario 'Travel options to the venue are displayed' do
    visit '/reception'
    expect(page).to have_content('By Train The closest train station is East Dulwich, which is served by National Rail services from London Bridge.')
    expect(page).to have_content('By Car There are no car parks near by, so you might have to chance it with street parking.')
    expect(page).to have_content('By Taxi If you\'ve not used Uber before, download the app and use code emmab120 to get £10 off your first ride.')
  end
end
