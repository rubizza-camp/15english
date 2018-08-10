# frozen_string_literal: true

class TextQuestionsController < ApplicationController
  before_action :admin_user, only: [:show, :edit, :update, :destroy, :index]
  before_action :set_text_question, only: [:show, :edit, :update, :destroy]

  def new
    @text_questions = TextQuestion.new
  end

  def show
  end

  def index
    @text_questions = TextQuestion.all
  end

  def create
    @text_questions = TextQuestion.create(text_questions_params)
    redirect_to text_questions_url
  end

  def edit
  end

  def update
    @text_question.update(text_questions_params)
    redirect_to courses_url
  end

  def destroy
    @text_questions.destroy
    redirect_to text_questions_url
  end

  private

    def set_text_question
      @text_questions = TextQuestion.find(params[:id])
    end

    def admin_user
      redirect_to(text_questions_path) unless current_user.admin?
    end

    def text_questions_params
      params.require(:text_question).permit(:title)
    end
end
