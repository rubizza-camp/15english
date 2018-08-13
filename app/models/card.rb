# class Card
class Card < ApplicationRecord
  mount_uploader :url, UrlUploader
  validates :text, presence: true, length: { maximum: 20 }
  validate :picture_size

  private

    def picture_size
      errors.add(:url, "should be less than 10MB") if url.size > 10.megabytes
    end
end
