# frozen_string_literal: true

# This model will be used for testing English level of user
class TestLevel < ApplicationRecord
  has_many :questions, as: :questionable
  accepts_nested_attributes_for :questions

  validates :title, presence: true
end
