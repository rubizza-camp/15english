# frozen_string_literal: true

# This class represents Question with Image
class ImageQuestion < ApplicationRecord
  has_many :pages
  has_many :revisions, through: :pages
  has_many :practices, through: :pages
  has_many :theories, through: :pages

<<<<<<< HEAD
=======
  mount_uploader :image, ImageUploader
>>>>>>> bd0d903... Add dashboards for images
end
