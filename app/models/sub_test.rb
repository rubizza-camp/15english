# frozen_string_literal: true

# SubTest modek
class SubTest < ApplicationRecord
  has_many :subject_sub_tests
  has_many :subjects, through: :subject_sub_tests
  has_many :questions, as: :questionable
end
