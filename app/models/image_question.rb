# frozen_string_literal: true

# This class represents Question with Image
class ImageQuestion < ApplicationRecord
  has_one :image, as: :imageable
  has_many :pages
  has_many :revisions, through: :pages
  has_many :practices, through: :pages
  has_many :theories, through: :pages

end
