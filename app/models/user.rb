# frozen_string_literal: true

# Comment for User model
class User < ApplicationRecord
  has_many :user_courses
  has_many :courses, through: :user_courses
  has_many :images, as: :imageable
  has_many :user_lessons
  has_many :lessons, through: :user_lessons
  has_one :test_level

  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :recoverable# , :omniauthable

  validates :username, presence: true

  # User Avatar Validation
  validates_integrity_of  :avatar
  validates_processing_of :avatar
end
