class UserSubject < ApplicationRecord
  belongs_to :subject
  has_many :user_lessons
  has_many :lessons, through: :user_lessons
end
