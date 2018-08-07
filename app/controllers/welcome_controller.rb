# frozen_string_literal: true

class WelcomeController < ApplicationController
  before_action :redirect_admin

  def index
  end

  private
  def redirect_admin
    redirect_to static_pages_admin_dashboard_path if current_user.admin?
  end
end
