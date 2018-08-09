# frozen_string_literal: true

# This class represents Question
class Question < ApplicationRecord
  has_many :image_questions
  has_many :text_questions
  has_many :radio_image_questions
  has_many :radio_questions
  has_many :radio_image_text_questions
end
