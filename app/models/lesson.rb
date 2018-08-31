# frozen_string_literal: true

# Comment for Lesson model
class Lesson < ApplicationRecord
  belongs_to :subject
  has_many :cards
  has_many :learning_process_states
  has_many :users, through: :learning_process_states
  has_many :questions, as: :questionable
  has_many :words
  accepts_nested_attributes_for :questions

  validates :title, presence: true
end
