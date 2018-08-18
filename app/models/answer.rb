# frozen_string_literal: true

# class Card
class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
end
