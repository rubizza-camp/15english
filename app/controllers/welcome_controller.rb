# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    if signed_in? && current_user.admin
      redirect_to admin_root_path
    end
  end
end
