# frozen_string_literal: true

# class SubTestSessionsController
class SubTestSessionsController < ApplicationController

  def percent_right_answers
    @percent = caunt_right_answers * 100 / caunt_all_questions
    puts @percent
    redirect_to sub_test_path
  end

  def new
    @user = current_user
    @sub_test = Subject.first.sub_test #Subject.find(params[:id])
    @session = SubTestSession.new(sub_test: @sub_test,user: @user)
    @questions = @sub_test.questions
    @questions.each do |question|
      @session.answers.build(question: question)
    end
  end

  def create
    @answer = Answer.create(user: @user, question: @question, answer: nil,sub_test_session: @session)
    @session = SubTestSession.create(sub_test: @sub_test,user: @user)
    redirect_to sub_test_session_path
  end


  private
    def count_right_answers
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
end
