class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :recoverable#, :omniauthable

  # User Avatar Validation
  validates_integrity_of  :avatar
  validates_processing_of :avatar

  private
  def avatar_size_validation
    errors[:avatar] << I18n.t('errors.messages.avatar_size_error') if avatar.size > 0.5.megabytes
  end
end
