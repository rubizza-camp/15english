# frozen_string_literal: true

# class question
class Question < ApplicationRecord
  has_many :answers
  belongs_to :questionable, polymorphic: true
  belongs_to :lessons, optional: true
  accepts_nested_attributes_for :answers

  def answers_for_form
    collection = answers.where(question_id: id)
    collection.any? ? collection : answers.build
  end
end
