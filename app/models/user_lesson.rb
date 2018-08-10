# frozen_string_literal: true
class UserLesson < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
end
