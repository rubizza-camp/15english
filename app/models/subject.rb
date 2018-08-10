# frozen_string_literal: true
class Subject < ApplicationRecord
  belongs_to :course
  has_many :lessons
  validates :title, presence: true
end
