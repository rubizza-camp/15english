# frozen_string_literal: true

# class Card
class Answer < ApplicationRecord
  has_many :lessons_user
  has_many :users, through: :lessons_user
  belongs_to :question
end
