# frozen_string_literal: true

# Comment for DictionaryWord model
class DictionaryWord < ApplicationRecord
  belongs_to :word
  belongs_to :dictionary
end
