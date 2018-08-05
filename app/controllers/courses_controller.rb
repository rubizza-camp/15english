class CoursesController < ApplicationController
   before_action :set_user, only: [:show, :edit, :update, :destroy]
  def new
    @course = Course.new
  end

  def show
    @course = Course.find(params[:id])   
  end 

  def index
    @courses = Course.all
  end

  def create
    @course = Course.new(course_params).save
    redirect_to courses_url
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to courses_url
  end

  def destroy
    Course.find(params[:id]).destroy
    redirect_to courses_url
  end

  private

   # def set_user
   #    @user = User.find(params[:id])
   #    if @user.has_role?
   #  end

  def course_params
    params.require(:course).permit(:title)
  end
end
