# frozen_string_literal: true

# Comment for Dictionary model
class Dictionary < ApplicationRecord
  belongs_to :user
  has_many :lessons
end
