# frozen_string_literal: true

# class SubTestsController
class SubTestsController < ApplicationController
  #before_action :find_subject, only: [:show, :edit, :update, :destroy, :index, :caunt_all_questions, :answers_people, :caunt_right_answers]

  def percent_right_answers
      @percent = caunt_right_answers * 100 / caunt_all_questions
      puts @percent
      redirect_to sub_test_path
  end

  def index
    if params[:type].nil?
      @title = "Elementary"
    else
      @title = params[:type]
    end
    @subject = Subject.first #Subject.find(params[:id])
    @sub_test = @subject.sub_test
    @questions = @sub_test.questions
    @user = current_user
  end

  # def index
  #   @subject = Subject.first #Subject.find(params[:id])
  #   @sub_test = @subject.sub_test
  #   @user = current_user
  # end

  def update
    @answer_radio_image_text_1 = params[:sub_test][:answer1]
    # @answer_radio_image_1 = params[:sub_test][:radio_image_answer_1]
    # @answer_radio_image_2 = params[:sub_test][:radio_image_answer_2]
    @answer_radio_image_text_2 = params[:sub_test][:answer2]
    percent_right_answers
  end

  private
    def caunt_right_answers
      index_right_answers = 0
      index_right_answers += 1 if all_right_answers_radio_image_text_questions.include? @answer_radio_image_text_2
      index_right_answers += 1 if all_right_answers_radio_image_text_questions.include? @answer_radio_image_text_1
      index_right_answers += 1 if all_right_answers_radio_image_questions.include? @answer_radio_image_1
      index_right_answers += 1 if all_right_answers_radio_image_questions.include? @answer_radio_image_2
      return index_right_answers
    end

    def all_right_answers_radio_image_text_questions
      right_answers_radio_image_text_questions = []
      @subject.sub_test.questions.where(type: "RadioImageTextQuestion").each do |question|
        right_answers_radio_image_text_questions << question.correct_answer
      end
      return right_answers_radio_image_text_questions
    end

    def all_right_answers_radio_image_questions
      right_answers_radio_image_questions = []
      @subject.sub_test.questions.where(type: "RadioImageQuestion").each do |question|
        right_answers_radio_image_questions << question.correct_answer
      end
      return right_answers_radio_image_questions
    end

    # namber - 100%
    def caunt_all_questions
      index_answer = 0
      index_answer += @subject.sub_test.questions.where(type: "RadioImageQuestion").count
      index_answer += @subject.sub_test.questions.where(type: "RadioImageTextQuestion").count
    end

    def find_subject
      @subject = Subject.first #Subject.find(params[:id])
      @sub_test = @subject.sub_test
      @user = current_user
    end
end
