# frozen_string_literal: true

# Comment for Lesson model
class Lesson < ApplicationRecord
  belongs_to :subject
  has_many :user_lessons
  has_many :users, through: :user_lessons
  has_one :revision
  has_one :theory
  has_one :practice

  validates :title, presence: true
end
