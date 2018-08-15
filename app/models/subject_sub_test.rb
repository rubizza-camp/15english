# frozen_string_literal: true

# SubjectSubTest model
class SubjectSubTest < ApplicationRecord
  belongs_to :subject
  belongs_to :sub_test
end
