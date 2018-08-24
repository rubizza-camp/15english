# frozen_string_literal: true

class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      if check_answer
        render json: { message: 'Answer OK' }
      else
        render json: { message: 'Answer neOK' }
      end
    end
  end

  private

  def check_answer
    @question = Question.find(@answer.question_id)

    if @answer.answer == @question.correct_answer
      true
    else
      false
    end
  end

  def answer_params
    params.permit(:answer, :user_id, :question_id, :learning_process_state_id)
  end
end
