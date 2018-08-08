# frozen_string_literal: true

# class about courses
class Course < ApplicationRecord
  belongs_to :user
  has_many :subjects
  validates :title, presence: true, length: { maximum: 20 }
end
