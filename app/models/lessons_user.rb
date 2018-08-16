# frozen_string_literal: true

# Comment for LessonsUser model
class LessonsUser < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
end
