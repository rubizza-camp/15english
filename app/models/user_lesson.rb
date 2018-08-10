# frozen_string_literal: true

# Comment for UserLesson model
class UserLesson < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
end
