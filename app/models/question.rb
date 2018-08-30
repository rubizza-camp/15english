# frozen_string_literal: true

# class question
class Question < ApplicationRecord
  has_many :answers
  belongs_to :questionable, polymorphic: true
  belongs_to :lesson, optional: true
  belongs_to :test_level, optional: true
  belongs_to :sub_test, optional: true
  accepts_nested_attributes_for :answers

  def options
    
  end

  def all_rigth_answers(questuon)
    questuon.correct_answer
  end

  def count
    questions.count
  end
end
