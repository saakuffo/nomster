require 'rails_helper'

RSpec.describe PlacesController do
  describe 'places#index actions' do
    it 'should load the home page' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'places#new actions' do
    it "should require users to be logged in" do
      get :new
      expect(response).to redirect_to new_user_session_path
    end
  end
end
