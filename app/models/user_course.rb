class UserCourse < ApplicationRecord
  has_many :user_subjects
  has_many :sujects, trough: :user_subjects
end
