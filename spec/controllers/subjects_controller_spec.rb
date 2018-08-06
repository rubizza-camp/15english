require 'rails_helper'

RSpec.describe SubjectsController, type: :controller do

  describe "GET #page" do
    it "returns http success" do
      get :page
      expect(response).to have_http_status(:success)
    end
  end

end
