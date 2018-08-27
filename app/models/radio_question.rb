# frozen_string_literal: true

# This class represents Question with RadioButtons
class RadioQuestion < Question
  mount_uploader :image, ImageUploader

  validates_integrity_of  :image
  validates_processing_of :image
end
