# frozen_string_literal: true

class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      check_answer
    end
  end

  def check_answer
    @question = Question.find(@answer.question_id)
    if @answer.answer == @question.correct_answer
      flash[:success] = "Answer correct!"
    else
      flash[:error] =  "Answer incorrect!"
    end
  end

  private

    def answer_params
      params.permit(:answer, :user_id, :question_id, :learning_process_state_id)
    end
end
