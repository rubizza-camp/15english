# frozen_string_literal: true

# This class represents Question with Image, RadioButtons and Text
class RadioImageTextQuestion < Question
  mount_uploader :image, ImageUploader
end
