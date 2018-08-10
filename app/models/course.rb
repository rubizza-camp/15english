# frozen_string_literal: true

# Comment for Course model
class Course < ApplicationRecord
  has_many :user_courses
  has_many :users, through: :user_courses
  has_many :subjects
  validates :title, presence: true, length: { maximum: 20 }
end
