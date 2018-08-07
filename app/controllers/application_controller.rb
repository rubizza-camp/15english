# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |user| user.permit(:email, :password, :password_confirmation) }
      devise_parameter_sanitizer.permit(:account_update) { |user| user.permit(:username, :password, :password_confirmation, :current_password, :avatar, :avatar_cache, :remove_avatar) }
    end

  private
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }
  end
end
