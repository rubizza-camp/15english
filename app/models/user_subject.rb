class UserSubject < ApplicationRecord
  has_many :user_lessons
  has_many :lessons, trough: :user_lessons
end
