# frozen_string_literal: true

# Comment for Image model
class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end
