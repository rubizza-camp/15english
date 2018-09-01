# frozen_string_literal: true

class TestLevelSessionService
  SUCCESS_THRESHOLD = 0.6

  def initialize(params)
    @user_answers = params[:user_answers]
    @title = params[:title]
    @questions = TestLevel.where(title: @title).first.questions.order(:id)
  end

  attr_reader :user_answers, :title, :questions

  def process_test_data
    correct_answers = @questions.map { |quest| quest.correct_answer }
    counter = 0
    @user_answers.each_with_index do |user_answer, i|
      counter += 1 if user_answer == correct_answers[i]
    end
    if pass_to_next_level(counter, @questions.size) && @title != "Intermediate"
      "passed"
    elsif pass_to_next_level(counter, @questions.size)
      "Intermediate"
    else
      return "Pre-Intermediate" if @title == "Intermediate"
      "Elementary"
    end
  end

  def pass_to_next_level(right_answers, total_questions)
    right_answers / total_questions >= SUCCESS_THRESHOLD
  end
end
