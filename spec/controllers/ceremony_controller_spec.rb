require 'rails_helper'

RSpec.describe CeremonyController, type: :controller do
  describe 'GET index' do
    it 'renders the index page successfully' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
