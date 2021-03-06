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
        params = { rsvp: { first_name: 'Tony',
                         last_name: 'Soprano',
                         email: 'tony@sopranos.com',
                         rsvp: 'yes' } }
        expect{ post :create, params: params }.to change { Rsvp.count }.by(1)
      end

      it 'redirects to the RSVP page' do
        params = { rsvp: { first_name: 'Tony',
                           last_name: 'Soprano',
                           email: 'tony@sopranos.com',
                           rsvp: 'yes' } }
        post :create, params: params
        expect(response).to render_template :confirmation
      end
    end

    context 'if unsuccessful' do
      it 'does not save the RSVP to the database' do
        params = { rsvp: { first_name: 'Tony',
                           last_name: 'Soprano',
                           email: 'tony@sopranos.com' } }
        expect{ post :create, params: params }.to change{ Rsvp.count }.by(0)
      end

      it 'remains on the RSVP page' do
        params = { rsvp: { first_name: 'Tony',
                           last_name: 'Soprano',
                           email: 'tony@sopranos.com' } }
        post :create, params: params
        expect(response).to render_template :index
      end
    end
  end
end
