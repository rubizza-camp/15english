# frozen_string_literal: true

# class Theory
class Theory < ApplicationRecord
  belongs_to :lesson
  has_many :pages
  has_many :text_questions, through: :pages
  has_many :image_questions, through: :pages
  has_many :radio_questions, through: :pages
  has_many :radio_image_questions, through: :pages
  has_many :radio_image_text_questions, through: :pages
end
