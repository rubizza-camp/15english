# class Lesson
class Lesson < ApplicationRecord
  validates :title, presence: true
end
