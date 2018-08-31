# frozen_string_literal: true

# Comment for Subject model
class Subject < ApplicationRecord
  belongs_to :course
  has_many :lessons
  has_one :subject_sub_test
  has_one :sub_test, through: :subject_sub_test
  validates :title, presence: true
end
