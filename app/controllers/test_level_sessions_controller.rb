# frozen_string_literal: true

class TestLevelSessionsController < ApplicationController
  def index
    @test_level = TestLevel.new
  end

  def new
    if params[:type].nil?
      @title = "Elementary"
    else
      @title = params[:type]
    end
    @test_level = TestLevel.where(title: @title).first
    @session = TestLevelSession.new(user: @user, test_level: @test_level)
    @questions = @test_level.questions.order(:id)
    @questions.each do |question|
      @session.answers.build(question: question)
    end
  end

  def create
    @title = params[:level]
    user_answers = []
    params[:test_level_session][:answers_attributes].each { |_, answer| user_answers << answer[:answer] }
    helper = TestLevelSessionService.new({ user_answers: user_answers, title: @title })
    result = helper.process_test_data
    if result == "passed"
      redirect_to new_test_level_session_path(type: "Pre-Intermediate") if @title == "Elementary"
      redirect_to new_test_level_session_path(type: "Intermediate") if @title == "Pre-Intermediate"
    else
      redirect_to test_level_session_path(id: current_user.id, title: result)
    end
  end

  def show
    @title = params[:title]
    course_equivalent = { "Elementary" => "Newbie", "Pre-Intermediate" => "Middle", "Intermediate" => "Business Pro" }
    @course = Course.where(title: course_equivalent[@title]).first
  end

  private
  def test_level_session_attributes
    params.require(:test_level_session).permit(:test_level_id, answers_attribute: [:answer, :questions_id, :user_id]).merge(user: current_user)
  end
end
