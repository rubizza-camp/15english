# frozen_string_literal: true

# This class represents Question with Image and RadioButtons
class RadioImageQuestion < ApplicationRecord
  has_many :pages
  has_many :revisions, through: :pages
  has_many :practices, through: :pages
  has_many :theories, through: :pages

  mount_uploader :image, ImageUploader
end
