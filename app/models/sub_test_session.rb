class SubTestSession < ApplicationRecord
  belongs_to :user
  belongs_to :sub_test
  has_many :answers
  accepts_nested_attributes_for :answers
end
