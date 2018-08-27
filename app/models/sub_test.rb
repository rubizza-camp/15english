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
  mount_uploader :image, ImageUploader
  has_many :subject_sub_tests
  has_many :subjects, through: :subject_sub_tests
  has_many :questions, as: :questionable

#  attr_accessor :answer1,:answer2,:answer3,:answer4,:answer5
end
