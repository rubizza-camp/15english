# frozen_string_literal: true

class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:id])
    @questions = @lesson.questions
    @user = current_user
  end
end
