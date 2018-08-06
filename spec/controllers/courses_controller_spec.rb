# frozen_string_literal: true

require "rails_helper"

RSpec.describe CoursesController, type: :controller do
  let(:admin) { FactoryBot.create(:admin) }
  I18n.locale = :en

  describe "GET #courses" do
    it "returns http success" do
      get :courses
      #visit '/en/courses/'
      expect(response).to have_http_status(:success)
    end
  end

  # describe 'Get #courses' do
  #   it 'populates an array courses' do
  #     courses =  FactoryBot.create_list(:course, 2) 
  #     visit '/en/courses/'
  #     expect(assigns(:courses)).to match_array(@courses)
  #   end
  # end
end
