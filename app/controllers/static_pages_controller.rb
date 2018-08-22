# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def index
    if signed_in? && current_user.admin
      redirect_to admin_root_path
    end
  end

  def map
  end

  def choose_level
    @courses = Course.all
  end
end
