# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  before_action :set_locale

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |user| user.permit(:email, :username, :password, :password_confirmation, :terms_accepted) }
      devise_parameter_sanitizer.permit(:account_update) { |user| user.permit(:username, :password, :password_confirmation, :current_password, :avatar, :avatar_cache, :remove_avatar) }
    end

  private

    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end

    def default_url_options(options = {})
      { locale: I18n.locale }
    end

    def after_sign_in_path_for(resource)
      if current_user.admin
        admin_root_path
      else
        if current_user.courses.empty?
          level_path
        else
          user_map_path(resource)
        end
      end
    end
end
