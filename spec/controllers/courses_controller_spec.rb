require 'rails_helper'

RSpec.describe CoursesController, type: :controller do

  describe "GET #course" do
    it "returns http success" do
      get :course
      expect(response).to have_http_status(:success)
    end
  end

end
