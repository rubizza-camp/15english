# frozen_string_literal: true

# class SubTestsController
class SubTestsController < ApplicationController
  before_action :find_subject, only: [:show, :edit, :update, :destroy, :index, :caunt_all_questions, :answers_people]

  def percent_right_answers
     caunt_right_answers * 100 / caunt_all_questions
  end

  # def index
  #   @subject = Subject.first #Subject.find(params[:id])
  #   @sub_test = @subject.sub_test
  # end

  def update
    @all_answers_radio_image = :radio_image_answer
    @all_answers_radio_image_text = :radio_image_text_answer
    percent_right_answers
  end

  private
    def caunt_right_answers
      index_right_answers = 0
      all_right_answers_radio_image_text_questions.each do |right_answer|
        @all_answers_radio_image_text.each do |answer_people|
          index_right_answers += 1 if right_answer == answer_people
        end
      end

      all_right_answers_radio_image_questions.each do |right_answer|
        @all_answers_radio_image.each do |answer_people|
          index_right_answers += 1 if right_answer == answer_people
        end
      end

      return index_right_answers
    end

    def all_right_answers_radio_image_text_questions
      right_answers_radio_image_text_questions = []
      @subject.sub_test.radio_image_text_questions.each do |question|
        right_answers_radio_image_text_questions << question.answer
      end
    end

    def all_right_answers_radio_image_questions
      right_answers_radio_image_questions = []
      @subject.sub_test.radio_image_questions.each do |question|
        right_answers_radio_image_questions << question.answer
      end
    end

    # namber - 100%
    def caunt_all_questions
      index_answer = 0
      index_answer += @subject.sub_test.radio_image_questions.count
      index_answer += @subject.sub_test.radio_image_text_questions.count
    end

    def find_subject
      @subject = Subject.first #Subject.find(params[:id])
      @sub_test = @subject.sub_test
      @user = current_user
    end
end
