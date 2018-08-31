# frozen_string_literal: true

class SubTestSession < ApplicationRecord
  belongs_to :user
  belongs_to :sub_test
  has_many :answers
  accepts_nested_attributes_for :answers

  def count_right_answers
    answers.to_a.count(&:correct?)
  end

  def percent_right_answers(index, count_all_questions)
    index * 100 / count_all_questions
  end
end
