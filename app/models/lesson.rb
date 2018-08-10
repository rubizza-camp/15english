# frozen_string_literal: true
class Lesson < ApplicationRecord
  belongs_to :subject
  has_many :user_lessons
  has_many :users, through: :user_lessons

  validates :title, presence: true
end
