# frozen_string_literal: true

# This class represents Question with Image, RadioButtons and Text
class RadioImageTextQuestion < ApplicationRecord
  has_many :pages
  has_many :revisions, through: :pages
  has_many :practices, through: :pages
  has_many :theories, through: :pages

  mount_uploader :image, ImageUploader
end
