# frozen_string_literal: true

class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
    @questions = @lesson.questions.reverse
    @user = current_user
  end

  def new
    @lesson = Lesson.new
    @lesson.questions.build.answers.build
  end

  def create
    @lesson = Lesson.new(lesson_params)

    if @lesson.save
      redirect_to @lesson
    else
      render :new
    end
  end
end
