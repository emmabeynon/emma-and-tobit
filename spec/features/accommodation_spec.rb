require 'rails_helper'

feature 'Accommodation information' do
  # As a wedding guest
  # So that I can stay overnight near to the wedding venues
  # I would like to see a list of local hotel & Airbnb options.
  scenario 'The accommodation options are displayed' do
    visit '/accommodation'
    expect(page).to have_content('There isn\'t a great number of hotels in the immediate vicinity of the venues, though there are plenty in central London.')
    expect(page).to have_content('There are plenty of house and flat rental options in Dulwich, Peckham and the surrounding areas via Airbnb. If you\'ve not used it before, you can get £20 off your first booking by following this link (we\'ll get £20 too, hurrah!).')
  end
end
