# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    @user = User.friendly.find(params[:id])
  end

  def level
    @courses = Course.all
  end
end
