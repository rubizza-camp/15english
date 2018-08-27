# frozen_string_literal: true

# This class represents Question with Image and RadioButtons
class RadioImageQuestion < Question
  mount_uploader :image, ImageUploader
end
