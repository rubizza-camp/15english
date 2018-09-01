# frozen_string_literal: true

# class TestLevelSession
class TestLevelSession < ApplicationRecord
  belongs_to :user
  belongs_to :test_level
  has_many :answers
  accepts_nested_attributes_for :answers
end
