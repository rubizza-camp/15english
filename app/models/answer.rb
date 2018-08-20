# frozen_string_literal: true

# class Card
class Answer < ApplicationRecord
  belongs_to :learning_process_state
  belongs_to :question, optional: true
end
