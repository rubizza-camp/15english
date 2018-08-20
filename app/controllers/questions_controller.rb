# frozen_string_literal: true

class QuestionsController < ApplicationController
  before_action :set_question, only: [:show]

  def show
  end

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    @question.answers.build
  end

  private

  def questions_params
    params.require(:question).permit(:title,
      :answers_attributes => [:answer]
    )
  end

  def set_question
    @question = Question.find(params[:id])
  end
end
