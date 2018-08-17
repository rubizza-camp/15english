# frozen_string_literal: true

# This class represents Question with Image and RadioButtons
class RadioImageQuestion < ApplicationRecord
  has_many :pages
  has_many :revisions, through: :pages
  has_many :practices, through: :pages
  has_many :theories, through: :pages
  has_many :sub_tests, through: :pages
  validates_integrity_of  :image
  validates_processing_of :image

  mount_uploader :image, ImageUploader
end
