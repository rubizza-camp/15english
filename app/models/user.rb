# frozen_string_literal: true

# Comment for User model
class User < ApplicationRecord
  has_many :user_courses
  has_many :courses, through: :user_courses
  has_many :images, as: :imageable
  has_many :user_lessons
  has_many :lessons, through: :user_lessons

  mount_uploader :avatar, AvatarUploader
  include PolicyManager::Concerns::UserBehavior
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :recoverable, :omniauthable, omniauth_providers: %i[facebook]

  validates :username, presence: true

  # User Avatar Validation
  validates_integrity_of  :avatar
  validates_processing_of :avatar

  before_validation :accept_terms

  attr_accessor :terms_accepted

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    auth.terms_accepted = "1"
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.terms_accepted = "1"
      user.username = auth.info.name
      # user.image = auth.info.image
      user.skip_confirmation!
    end
  end

  private

  def accept_terms
    if (terms_accepted == "1" || terms_accepted == true) && new_record?
      self.policy_rule_cookie = true
      self.policy_rule_age = true
      self.policy_rule_privacy_terms = true
    end
  end
end
