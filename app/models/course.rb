class Course < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
end
 