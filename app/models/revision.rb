# frozen_string_literal: true

# class Revision
class Revision < ApplicationRecord
  belongs_to :lesson
  delegate :title, to: :lesson, prefix: true
  has_many :pages
  has_many :text_questions, through: :pages
  has_many :image_questions, through: :pages
  has_many :radio_questions, through: :pages
  has_many :radio_image_questions, through: :pages
  has_many :radio_image_text_questions, through: :pages
end
