require "carrierwave"

# class Card
class Card < ApplicationRecord
  mount_uploader :url, UrlUploader
  validates :text, presence: true, length: { maximum: 20 }
  validate :picture_size

  private

    def picture_size
      if url.size > 10.megabytes
        errors.add(:url, "should be less than 10MB")
      end
    end
end
