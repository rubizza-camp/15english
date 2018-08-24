# frozen_string_literal: true

class CoursesController < ApplicationController
  def index
    @course = Course.new
    @courses = Course.all
  end

  def choose_level
    @course = Course.find(params[:id])
    if current_user.courses.include?(@course)
      redirect_to @course
    else
      current_user.courses << @course
      redirect_to @course
    end
  end

  def show
    @course = Course.find(params[:id])
  end
end
