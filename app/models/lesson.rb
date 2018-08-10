# frozen_string_literal: true

# Comment for Lesson model
class Lesson < ApplicationRecord
  belongs_to :subject
  has_many :user_lessons
  has_many :users, through: :user_lessons

  validates :title, presence: true
end
