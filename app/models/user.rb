# frozen_string_literal: true

# model for User
class User < ApplicationRecord
  has_many :user_courses
  has_many :courses, through: :user_courses
  has_many :images, as: :imageable
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :recoverable# , :omniauthable

  # User Avatar Validation
  validates_integrity_of  :avatar
  validates_processing_of :avatar
end
