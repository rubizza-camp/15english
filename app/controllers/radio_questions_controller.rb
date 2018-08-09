# frozen_string_literal: true

# This class represents RadioQuestionsController
class RadioQuestionsController < ApplicationController
  before_action :set_radio_question, only: [:show, :edit, :update, :destroy]

  # GET /radio_questions
  # GET /radio_questions.json
  def index
    @radio_questions = RadioQuestion.all
  end

  # GET /radio_questions/1
  # GET /radio_questions/1.json
  def show
  end

  # GET /radio_questions/new
  def new
    @radio_question = RadioQuestion.new
  end

  # GET /radio_questions/1/edit
  def edit
  end

  # POST /radio_questions
  # POST /radio_questions.json
  def create
    @radio_question = RadioQuestion.new(radio_question_params)

    respond_to do |format|
      if @radio_question.save
        format.html { redirect_to @radio_question, notice: "Radio question was successfully created." }
        format.json { render :show, status: :created, location: @radio_question }
      else
        format.html { render :new }
        format.json { render json: @radio_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /radio_questions/1
  # PATCH/PUT /radio_questions/1.json
  def update
    respond_to do |format|
      if @radio_question.update(radio_question_params)
        format.html { redirect_to @radio_question, notice: "Radio question was successfully updated." }
        format.json { render :show, status: :ok, location: @radio_question }
      else
        format.html { render :edit }
        format.json { render json: @radio_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /radio_questions/1
  # DELETE /radio_questions/1.json
  def destroy
    @radio_question.destroy
    respond_to do |format|
      format.html { redirect_to radio_questions_url, notice: "Radio question was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_radio_question
      @radio_question = RadioQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def radio_question_params
      params.require(:radio_question).permit(:title, :first_option, :second_option, :third_option, :answer)
    end
end
