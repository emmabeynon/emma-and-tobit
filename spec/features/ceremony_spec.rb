require 'rails_helper'

feature 'Ceremony information' do

  # As a wedding ceremony guest
  # So that I can attend the wedding ceremony
  # I would like to view the ceremony venue address.

  scenario 'The venue address is displayed' do
    visit '/ceremony'
    expect(page).to have_content('The Asylum Chapel Caroline Gardens Peckham London SE15 2SQ')
  end

  # As a wedding ceremony guest
  # So that I can attend the wedding ceremony
  # I would like to view the ceremony venue address.

  scenario 'The ceremony start time is displayed' do
    visit '/ceremony'
    expect(page).to have_content('Arrive at 3.45pm for a 4pm start')
  end

  # As a wedding guest
  # So that I can travel to and from the wedding venues
  # I would like to view the transport options.

  scenario 'Travel options to the venue are displayed' do
    visit '/ceremony'
    expect(page).to have_content('By Train The closest train station is Queens Road Peckham, which is served by London Overground and National Rail services from London Bridge.')
    expect(page).to have_content('By Car There is free parking on Asylum Road, or in the Toys’R’Us car park on Old Kent Road for a small fee.')
    expect(page).to have_content('By Taxi If you\'ve not used Uber before, download the app and use code emmab120 to get £10 off your first ride.')
  end
end
