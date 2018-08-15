# frozen_string_literal: true

# This class represents Question with Text
class TextQuestion < ApplicationRecord
  has_many :pages
  has_many :revisions, through: :pages
  has_many :practices, through: :pages
  has_many :theories, through: :pages
  has_many :sub_tests, through: :pages
end
