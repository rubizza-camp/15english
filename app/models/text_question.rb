# frozen_string_literal: true

# This class represents Question with Text
class TextQuestion < Question
  mount_uploader :image, ImageUploader
end
