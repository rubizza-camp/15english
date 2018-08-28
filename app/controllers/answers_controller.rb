# frozen_string_literal: true

class AnswersController < ApplicationController
  def create
    # raise params.inspect
    @answer = Answer.new(answer_params)
    if @answer.save
      if check_answer
        render json: { message: 'Answer is correct' }
      else
        render json: { message: 'Answer is incorrect' }
      end
    end
  end

  private

  def check_answer
    @question = Question.find(@answer.question_id)
    @answer.answer == @question.correct_answer
  end

  def answer_params
    params.require(:answer).permit(:answer, :user_id, :question_id, :learning_process_state_id)
  end
end
