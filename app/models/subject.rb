# frozen_string_literal: true

# Comment for Subject model
class Subject < ApplicationRecord
  belongs_to :course
  has_many :lessons
  has_one :subject_sub_tests
  has_one :sub_tests, through: :subject_sub_tests
  validates :title, presence: true
end
