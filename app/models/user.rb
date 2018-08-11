class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include PolicyManager::Concerns::UserBehavior
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable,
         :omniauthable, omniauth_providers: %i[facebook]

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
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      # user.name = auth.info.name
      # user.image = auth.info.image
      # user.skip_confirmation!
    end
  end

  private

  def accept_terms
    if (terms_accepted == '1' || terms_accepted == true) && new_record?
      self.policy_rule_cookie = true
      self.policy_rule_age = true
      self.policy_rule_privacy_terms = true
    end
  end
end
