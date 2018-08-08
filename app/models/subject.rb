class Subject < ApplicationRecord
  belongs_to :user_subject
  validates :title, presence: true
end
