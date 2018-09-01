# frozen_string_literal: true

# This model will be used for testing English level of user
class TestLevel < ApplicationRecord
  has_many :questions, as: :questionable
  has_many :test_level_sessions
  has_many :answers
  accepts_nested_attributes_for :answers

  validates :title, presence: true
end
