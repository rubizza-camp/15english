# frozen_string_literal: true

# Comment for Lesson model
class Page < ApplicationRecord
  belongs_to :revision
  belongs_to :practice
  belongs_to :theory
  belongs_to :text_question
  belongs_to :image_question
  belongs_to :radio_question
  belongs_to :radio_image_question
  belongs_to :radio_image_text_question
end
