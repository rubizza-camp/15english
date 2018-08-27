# frozen_string_literal: true

class TestLevelsController < ApplicationController
  def index
    @test_level = TestLevel.new
  end

  def answer
    result = 0
    @answers = params[:test_level]
    @title = params[:level]
    @questions = TestLevel.where(title: @title).first.questions.order(:id)
    unless @answers.nil?
      @answers.each do |key, answer|
        result += 1 if @questions[key.to_i].correct_answer == answer
      end
    end
    if result >= @questions.size * 0.6
      redirect_to test_level_path(type: "Advanced", id: current_user.id) if @title == "Elementary"
      redirect_to test_level_path(type: "Pro", id: current_user.id) if @title == "Advanced"
    else
      @title = "Elementary" if @title == "Elementary" || @title == "Advanced"
      @title = "Advanced" if @title == "Pro"
    end
  end

  def show
    if params[:type].nil?
      @title = "Elementary"
    else
      @title = params[:type]
    end
    @questions = TestLevel.where(title: "Elementary").first.questions.order(:id)
    @questions = TestLevel.where(title: params[:type]).first.questions.order(:id) unless params[:type].nil?
  end

  def check

  end
end
