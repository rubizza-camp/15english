# frozen_string_literal: true

# This class represents Question with Image, RadioButtons and Text
class RadioImageTextQuestion < ApplicationRecord
  has_one :image, as: :imageable
  has_many :pages
  has_many :revisions, through: :pages
  has_many :practices, through: :pages
  has_many :theories, through: :pages

  mount_uploader :image, AvatarUploader

  validates_integrity_of  :image
  validates_processing_of :image
end
