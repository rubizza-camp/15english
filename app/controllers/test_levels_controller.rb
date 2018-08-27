# frozen_string_literal: true

class TestLevelsController < ApplicationController
  def index
    @test_level = TestLevel.new
  end

  def answer
    binding.pry
  end

  def show
    binding.pry
    @questions = TestLevel.where(title: "Elementary").first.questions
    @questions = TestLevel.where(title: params[:type]).first.questions unless params[:type].nil?
  end

  def check
  end
end
