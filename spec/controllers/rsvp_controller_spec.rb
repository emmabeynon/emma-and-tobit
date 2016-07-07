require 'rails_helper'

RSpec.describe RsvpController, type: :controller do
  describe 'GET #index' do
    it 'renders the index page successfully' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    context 'if successful' do
      it 'saves the RSVP to the database' do
        expect{
          post :create, rsvp: { first_name: 'Tony', last_name: 'Soprano', email: 'tony@sopranos.com', rsvp: 'yes' }
        }.to change{ Rsvp.count }.by(1)
      end

      it 'redirects to the RSVP page' do
        post :create, rsvp: { first_name: 'Tony', last_name: 'Soprano', email: 'tony@sopranos.com', rsvp: 'yes' }
        expect(response).to redirect_to '/rsvp'
      end
    end

    context 'if unsuccessful' do
      it 'remains on the RSVP page' do
        post :create, rsvp: { first_name: 'Tony', last_name: 'Soprano', email: 'tony@sopranos.com' }
        expect(response).to render_template :index
      end
    end
  end
end
