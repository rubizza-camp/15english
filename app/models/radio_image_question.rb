# frozen_string_literal: true

# This class represents Question with Image and RadioButtons
class RadioImageQuestion < ApplicationRecord
  has_one :image, as: :imageable
  has_many :pages
  has_many :revisions, through: :pages
  has_many :practices, through: :pages
  has_many :theories, through: :pages
end
