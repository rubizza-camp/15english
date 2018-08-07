require 'rails_helper'

RSpec.describe SubjectsController, type: :controller do

  describe "GET #subjects" do
    it "returns http success" do
      visit "/en/subjects/"
      expect(response).to have_http_status(:success)
    end
  end

end
