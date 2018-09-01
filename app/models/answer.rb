# frozen_string_literal: true

# class Answer
class Answer < ApplicationRecord
  belongs_to :learning_process_state
  belongs_to :question, optional: true
  belongs_to :test_level_session, optional: true

  def correct?
    question.correct_answer == answer
  end
end
