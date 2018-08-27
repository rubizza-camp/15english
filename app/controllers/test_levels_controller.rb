# frozen_string_literal: true

class TestLevelsController < ApplicationController
  def index
    @test_level = TestLevel.new
  end

  def answer
    result = 0
    @answers = params[:test_level]
    @title = params[:level]
    @questions =  TestLevel.where(title: @title).first.questions.order(:id)
    @answers.each do |key, answer|
      result += 1 if @questions[key.to_i].correct_answer == answer
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
    @title = params[:type]
    @title = "Elementary" if params[:type].nil?
    @questions = TestLevel.where(title: "Elementary").first.questions.order(:id)
    @questions = TestLevel.where(title: params[:type]).first.questions.order(:id) unless params[:type].nil?
  end

  def check

  end
end
