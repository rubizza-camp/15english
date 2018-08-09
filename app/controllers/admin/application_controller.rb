# frozen_string_literal: true
module Admin
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_user!
    before_action :set_locale

    private
      def set_locale
        I18n.locale = params[:locale] || I18n.default_locale
      end

      def default_url_options(options = {})
        { locale: I18n.locale }
      end
  end
end
