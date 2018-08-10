# frozen_string_literal: true

# Comment for UserCourse model
class UserCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course
end
