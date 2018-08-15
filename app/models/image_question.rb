# frozen_string_literal: true

# This class represents Question with Image
class ImageQuestion < ApplicationRecord
  has_many :pages
  has_many :revisions, through: :pages
  has_many :practices, through: :pages
  has_many :theories, through: :pages

  mount_uploader :image, ImageUploader
end
