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
end
