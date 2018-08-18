# frozen_string_literal: true

# class question
class Question < ApplicationRecord
  has_many :answers
  belongs_to :questionable, polymorphic: true
end
