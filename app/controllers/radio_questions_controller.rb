# frozen_string_literal: true

class RadioQuestionsController < ApplicationController
  before_action :set_radio_question, only: [:show, :answer]

  def show
  end

  def index
    @radio_questions = RadioQuestion.all
  end

  def update

  end

  # def parse_answer
  #   answer_from_form = params
  # end

  def parse_answers
    comments_from_form = params['myform']['comments']
    #do your stuff with comments_from_form here
  end

  def answer
    @data = params[:text1]
  end
  private

  def radio_questions_params
    params.require(:radio_question).permit(:title)
  end

  def set_radio_question
    @radio_question = RadioQuestion.find(params[:id])
  end
end
