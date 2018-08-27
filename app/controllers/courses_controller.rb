# frozen_string_literal: true

class CoursesController < ApplicationController
  def index
    @course = Course.new
    @courses = Course.all
  end

  def choose_level
    @course = Course.find(params[:id])
    if current_user.courses.where(id: params[:id]).empty?
      current_user.courses << @course
      current_first_lesson.update(current: true)
    end
    redirect_to @course
  end

  def show
    @course = Course.find(params[:id])
    @subjects = Subject.where(course_id: @course.id)
    @lessons = Lesson.where(subject_id: @subjects.ids)
  end

  private

    def first_lesson_id
      @course.subjects.first.lessons.first.id
    end

    def current_first_lesson
      current_lessons.where(lesson_id: first_lesson_id)
    end
end
