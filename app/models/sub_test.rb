# frozen_string_literal: true

# SubTest modek
class SubTest < ApplicationRecord
  has_one :subject_sub_test
  has_one :subject, through: :subject_sub_test
  has_many :pages
  has_many :text_questions, through: :pages
  has_many :image_questions, through: :pages
  has_many :radio_questions, through: :pages
  has_many :radio_image_questions, through: :pages
  has_many :radio_image_text_questions, through: :pages
  attr_accessor :radio_image_answer_1,:radio_image_answer_2, :radio_image_text_answer_1, :radio_image_text_answer_2
  mount_uploader :image, ImageUploader
end
