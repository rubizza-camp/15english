# frozen_string_literal: true

# model for User
class User < ApplicationRecord
  has_many :images, as :imageable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :recoverable# , :omniauthable
end
