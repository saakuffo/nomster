require 'rails_helper'

RSpec.describe PlacesController do
  describe 'places#index actions' do
    it 'if there is a quote in the DB go to index' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
