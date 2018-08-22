# frozen_string_literal: true

# This class represents Question with Image
class ImageQuestion < Question
  mount_uploader :image, ImageUploader
end
