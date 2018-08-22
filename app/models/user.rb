# frozen_string_literal: true

# Comment for User model
class User < ApplicationRecord
  has_many :user_courses
  has_many :courses, through: :user_courses
  has_many :images, as: :imageable
  has_many :lessons_user
  has_many :lessons, through: :lessons_user
  has_one :test_level

  mount_uploader :avatar, AvatarUploader
  include PolicyManager::Concerns::UserBehavior
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :recoverable, :omniauthable, omniauth_providers: %i[facebook]

  validates :username, presence: true

  # User Avatar Validation
  validates_integrity_of  :avatar
  validates_processing_of :avatar

  before_validation :accept_terms, if: :terms_accepted?

  attr_accessor :terms_accepted

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    auth.terms_accepted = true
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.terms_accepted = "1"
      user.username = auth.info.name
      # user.image = auth.info.image
      user.skip_confirmation!
    end
  end

  def self.send_reminder_mail
    User.all.each { |user| UserNotifierMailer.send_reminder_email(user).deliver }
  end

  private

    def accept_terms
      self.policy_rule_cookie = true
      self.policy_rule_age = true
      self.policy_rule_privacy_terms = true
    end

    def terms_accepted?
      (terms_accepted == "1" || terms_accepted == true) && new_record?
    end
end
