# frozen_string_literal: true

# Comment for Lesson model
class Lesson < ApplicationRecord
  belongs_to :subject
  has_many :lessons_user
  has_many :users, through: :lessons_user
  has_one :revision
  has_one :theory
  has_one :practice

  validates :title, presence: true
end
