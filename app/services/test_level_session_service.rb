# frozen_string_literal: true

class TestLevelSessionService
  def initialize(params)
    @user_answers = params[:user_answers]
    @title = params[:title]
    @questions = TestLevel.where(title: @title).first.questions.order(:id)
  end

  attr_reader :user_answers, :title, :questions

  def process_test_data
    correct_answers = []
    @questions.each { |quest| correct_answers << quest.correct_answer }
    counter = 0
    @user_answers.each_with_index do |user_answer, i|
      counter += 1 if user_answer == correct_answers[i]
    end
    if pass_to_next_level(counter, @questions.size) && @title != "Pro"
      "passed"
    elsif pass_to_next_level(counter, @questions.size)
      return "Pro"
    else
      return "Advanced" if @title == "Pro"
      "Elementary"
    end
  end

  def pass_to_next_level(right_answers, total_questions)
    return true if right_answers / total_questions >= 0.6
    false
  end
end
