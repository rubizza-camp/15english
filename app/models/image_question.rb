# frozen_string_literal: true

# This class represents Question with Image
class ImageQuestion < ApplicationRecord
  has_one :image, as: :imageable
  mount_uploader :image, AvatarUploader

  validates_integrity_of  :image
  validates_processing_of :image
end
