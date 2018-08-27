# frozen_string_literal: true

# Comment for LessonsUser model
class LearningProcessState < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  has_many :answers
end
