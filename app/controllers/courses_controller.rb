# frozen_string_literal: true

class CoursesController < ApplicationController
  before_action :admin_user, only: [:show, :edit, :update, :destroy, :index]
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def new
    @course = Course.new
  end

  def show
  end

  def index
    @course = Course.new
    @courses = Course.all
  end

  def create
    @course = Course.create(course_params)
    redirect_to courses_url
  end

  def edit
  end

  def update
    @course.update(course_params)
    redirect_to courses_url
  end

  def destroy
    @course.destroy
    redirect_to courses_url
  end

  private

    def set_course
      @course = Course.find(params[:id])
    end

    def admin_user
      redirect_to(course_path) unless current_user.admin?
    end

    def course_params
      params.require(:course).permit(:title)
    end
end
