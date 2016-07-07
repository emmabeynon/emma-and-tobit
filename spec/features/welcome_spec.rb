require 'rails_helper'

feature 'Welcome page' do
  scenario 'displays the date of the wedding' do
    visit '/'
    expect(page).to have_content('Emma & Tobit\'s Wedding 13th May 2017')
  end
end
