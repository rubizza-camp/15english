# frozen_string_literal: true

# This class represents Question with Card
class CardQuestion < Question
  mount_uploader :image, ImageUploader
end
