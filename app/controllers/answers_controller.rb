# frozen_string_literal: true

class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit]

  def index
    @answers = Answer.all
  end

  def show
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = current_user.answers.build(answer_params)
    if @answer.save
      flash[:success] = "Answer created!"
      # check if answer correct or incorrect
    else

    end
  end

  private

    def answer_params
      params.require(:answer).permit(:answer, :id, :user_id, :question_id, :learning_process_state_id)
    end

    def set_answer
      @answer = Answer.find(params[:id])
    end
end
