# frozen_string_literal: true

# Comment for Lesson model
class Page < ApplicationRecord
  belongs_to :revision, optional: true
  belongs_to :practice, optional: true
  belongs_to :theory, optional: true
  belongs_to :text_question, optional: true
  belongs_to :image_question, optional: true
  belongs_to :radio_question, optional: true
  belongs_to :radio_image_question, optional: true
  belongs_to :radio_image_text_question, optional: true
  belongs_to :sub_test, optional: true
end
