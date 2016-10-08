require 'rails_helper'

feature 'RSVP' do
  # As a wedding guest
  # So that I can let the bride and groom know if I am attending
  # I would like to RSVP.
  scenario 'User RSVP\'s "Yes" with no dietary requirements or additional comments' do
    visit '/rsvp'
    fill_in('First Name', with: 'Carmela')
    fill_in('Last Name', with: 'Soprano')
    fill_in('Email', with: 'carmela@sopranos.com')
    choose('Able to attend')
    click_button('Submit')
    expect(page).to have_content('Thank you for RSVPing')
  end

  # As a wedding ceremony guest
  # So that I can eat an appropriate meal
  # I would like to let the bride and groom know my dietary requirements.
  scenario 'User RSVP\'s "Yes" with dietary requirements and additional comments' do
    visit '/rsvp'
    fill_in('First Name', with: 'Meadow')
    fill_in('Last Name', with: 'Soprano')
    fill_in('Email', with: 'carmela@sopranos.com')
    page.choose('Able to attend')
    fill_in('Dietary Requirements', with: 'Vegetarian')
    fill_in('Anything else?', with:'I can\'t wait!')
    click_button('Submit')
    expect(page).to have_content('Thank you for RSVPing')
  end

  scenario 'User does not fill in first name, last name, email or RSVP response and the RSVP throws an error' do
    visit '/rsvp'
    click_button('Submit')
    expect(page).to have_content('You couldn\'t complete your RSVP because 5 errors occurred:')
  end
end
