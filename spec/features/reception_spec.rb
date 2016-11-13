require 'rails_helper'

feature 'Reception information' do

  # As a wedding guest
  # So that I can attend the evening do
  # I would like to view the evening venue address.

  scenario 'The venue address is displayed' do
    visit '/reception'
    expect(page).to have_content('The Rosendale 65 Rosendale Road West Dulwich London SE21 8EZ')
  end

  # As a wedding guest
  # So that I can travel to and from the wedding venues
  # I would like to view the transport options.

  scenario 'Travel options to the venue are displayed' do
    visit '/reception'
    expect(page).to have_content('By Train The venue is within walking distance of Tulse Hill station, which is served by National Rail services from London Bridge and Blackfriars, and West Dulwich station, which is served by National Rail services from Victoria.')
    expect(page).to have_content('By Car The venue does not have a car park, but does offer 20% off booking a nearby parking space via JustPark using discount code THEROSENDALE20.')
    expect(page).to have_content('By Taxi If you\'ve not used Uber before, download the app and use code emmab120 to get £10 off your first ride.')
  end
end
