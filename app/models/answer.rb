# frozen_string_literal: true

# class Card
class Answer < ApplicationRecord
  belongs_to :learning_process_state, optional: true
  belongs_to :question, optional: true
  belongs_to :sub_test_session
  belongs_to :user

  def correct?(answer,correct)
    answer == correct
  end

  # def correct?
  #   answer == question.correct_answer
  # end
end
