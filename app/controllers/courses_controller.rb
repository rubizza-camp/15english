# frozen_string_literal: true

class CoursesController < ApplicationController
  before_action :lessons_of_course, only: [:show, :choose_level]
  def index
    @course = Course.new
    @courses = Course.all
  end

  def choose_level
    if current_user.courses.where(id: params[:id]).empty?
      current_user.courses << @course
      add_lessons_to_user
      reset_current_of_lesson
      change_current_of_new_lesson
    end
    redirect_to @course
  end

  def show
  end

  private

    def first_lesson_id
      @course.subjects.first.lessons.first.id
    end

    def user_first_lesson
      user_lessons.where(lesson_id: first_lesson_id)
    end

    def lessons_of_course
      @course = Course.find(params[:id])
      @subjects = Subject.where(course_id: @course.id)
      @lessons = Lesson.where(subject_id: @subjects.ids)
    end

    def add_lessons_to_user
      @lessons.each do |lesson|
        user_lessons.create(lesson_id: lesson.id, user_id: current_user.id)
      end
    end

    def reset_current_of_lesson
      user_lessons.where(current: true).update(current: false)
    end

    def change_current_of_new_lesson
      user_first_lesson.update(current: true)
    end

    def user_lessons
      current_user.learning_process_states
    end

end
