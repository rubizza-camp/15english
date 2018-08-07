# frozen_string_literal: true

require "rails_helper"

RSpec.describe CoursesController, type: :controller do
  describe "GET #courses" do
    it "returns http success" do
      visit "/en/courses/"
      expect(response).to have_http_status(:success)
    end
  end
end
