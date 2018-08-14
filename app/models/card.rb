# frozen_string_literal: true

# class Card
class Card < ApplicationRecord
  mount_uploader :url, UrlUploader
  validate :picture_size

  private

    def picture_size
      errors.add(:url, "should be less than 10MB") if url.size > 10.megabytes
    end
end
