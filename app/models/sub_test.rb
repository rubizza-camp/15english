# frozen_string_literal: true

# SubTest modek
class SubTest < ApplicationRecord
  has_one :subject_sub_test
  has_one :subject, through: :subject_sub_test
  mount_uploader :image, ImageUploader
  has_many :subject_sub_tests
  has_many :subjects, through: :subject_sub_tests
  has_many :questions, as: :questionable
  has_one :sub_test_session
end
