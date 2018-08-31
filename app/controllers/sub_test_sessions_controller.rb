# frozen_string_literal: true

# class SubTestSessionsController
class SubTestSessionsController < ApplicationController
  def new
    sub_test = Subject.first.sub_test #Subject.find(params[:id])
    @session = SubTestSession.new(sub_test: sub_test, user: current_user)
    sub_test.questions.each do |question|
      @session.answers.build(question: question, user: current_user)
    end
  end

  def create
    answers = []
    correct_answers = []
    index = 0
    @session = SubTestSession.create(sub_test_sessions_attributes)
    params[:sub_test_session][:answers_attributes].each_pair { |_, value| answers << value[:answer]}
    @questions = Subject.first.sub_test.questions
    count = @questions.count
    @questions.each { |q|  correct_answers << q.all_rigth_answers(q) }
    answers.each_index do |i|
      index += 1 if answers[i] == correct_answers[i]
    end
    params[:percent] = @session.percent_right_answers(index, count)
    redirect_to sub_test_sessions_path(passed_parameter: params[:percent])
    binding.pry
  end

  def index
    sub_test = Subject.first.sub_test
    @session = SubTestSession.find_by(sub_test: sub_test, user: current_user)
    @percent = params[:passed_parameter]
  end

  private

  def sub_test_sessions_attributes
    params.require(:sub_test_session).permit(:sub_test_id, answers_attributes: [:answer, :question_id, :user_id]).merge(user: current_user)
  end
end
