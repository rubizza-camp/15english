# frozen_string_literal: true

class RadioQuestionsController < ApplicationController
  before_action :set_radio_question, only: [:show, :update]

  def show
  end

  def index
    @radio_questions = RadioQuestion.all
  end

  def new
    @radio_question = Question.new
    @radio_question.answers.build
  end

  def create
    @radio_question = RadioQuestion.create(radio_questions_params)
    if @radio_question.save
      redirect_to radio_question_url
    else
      render 'new'
    end
  end

  def update
    @radio_question.update(radio_questions_params)
    redirect_to radio_question_url
  end

  private

  def radio_questions_params
    params.permit(:title,
                  answers_attributes: [:id,
                                      :answer,
                                      :user_id,
                                      :question_id,
                                      :learning_process_state_id]
    )
  end

  def set_radio_question
    @radio_question = RadioQuestion.find(params[:id])
  end
end
