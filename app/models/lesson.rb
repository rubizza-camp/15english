class Lesson < ApplicationRecord
  belongs_to :user_lesson
  validates :title, presence: true
end
