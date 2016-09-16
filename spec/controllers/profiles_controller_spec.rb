require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do
  let(:user){ FactoryGirl.create(:user) }

  describe "GET #index" do
    it "returns http success" do
      login_as(user)

      get :index

      expect(response).to have_http_status(:success)
      expect(assigns(:current_user)).to eq(user)
    end
  end

end
