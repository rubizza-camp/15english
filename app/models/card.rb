# frozen_string_literal: true

# class Card
class Card < ApplicationRecord
  mount_uploader :image, ImageUploader
  validate :picture_size
  validates :image, presence: true
  validates :text, presence: true
  private

    def picture_size
      errors.add(:image, "should be less than 10MB") if image.size > 10.megabytes
    end
end
