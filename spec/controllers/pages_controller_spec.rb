require 'rails_helper'
require_relative "../support/devise"

RSpec.describe PagesController, type: :controller do
  describe "GET /" do
    login_user
    context "from login user" do
      it "should return ok" do
        get :home
        expect(response).to have_http_status(:success)
      end
    end
  end  
end