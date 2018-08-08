class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  def index
    @lessons = Lesson.all
  end

  def show
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)

    if @lesson.save
      redirect_to @lesson
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @lesson.update(lesson_params)
      redirect_to @lesson
    else
      render :edit
    end
  end

  def destroy
    @lesson.destroy
    redirect_to lessons_path
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:title)
  end
end
