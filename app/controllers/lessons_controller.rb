# frozen_string_literal: true

class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :ending]

  def index
    @lessons = Lesson.all
  end

  def show
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

  def ending
    @course = @lesson.subject.course
    @words = @lesson.words
    @user = current_user
    @user.dictionary.words << @words unless @user.dictionary.words.include?(@words)
  end

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end
end
