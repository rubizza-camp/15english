# class UserCourse
class UserCourse < ApplicationRecord
  belongs_to :course
  has_many :user_subjects
  has_many :subjects, through: :user_subjects
end
