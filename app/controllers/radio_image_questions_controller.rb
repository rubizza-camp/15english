# frozen_string_literal: true

# This class represents RadioImageQuestionsController
class RadioImageQuestionsController < ApplicationController
  before_action :set_radio_image_question, only: [:show, :edit, :update, :destroy]

  # GET /radio_image_questions
  # GET /radio_image_questions.json
  def index
    @radio_image_questions = RadioImageQuestion.all
  end

  # GET /radio_image_questions/1
  # GET /radio_image_questions/1.json
  def show
  end

  # GET /radio_image_questions/new
  def new
    @radio_image_question = RadioImageQuestion.new
  end

  # GET /radio_image_questions/1/edit
  def edit
  end

  # POST /radio_image_questions
  # POST /radio_image_questions.json
  def create
    @radio_image_question = RadioImageQuestion.new(radio_image_question_params)

    respond_to do |format|
      if @radio_image_question.save
        format.html { redirect_to @radio_image_question, notice: "Radio image question was successfully created." }
        format.json { render :show, status: :created, location: @radio_image_question }
      else
        format.html { render :new }
        format.json { render json: @radio_image_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /radio_image_questions/1
  # PATCH/PUT /radio_image_questions/1.json
  def update
    respond_to do |format|
      if @radio_image_question.update(radio_image_question_params)
        format.html { redirect_to @radio_image_question, notice: "Radio image question was successfully updated." }
        format.json { render :show, status: :ok, location: @radio_image_question }
      else
        format.html { render :edit }
        format.json { render json: @radio_image_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /radio_image_questions/1
  # DELETE /radio_image_questions/1.json
  def destroy
    @radio_image_question.destroy
    respond_to do |format|
      format.html { redirect_to radio_image_questions_url, notice: "Radio image question was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_radio_image_question
      @radio_image_question = RadioImageQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def radio_image_question_params
      params.require(:radio_image_question).permit(:title, :image, :first_option, :second_option, :third_option, :answer)
    end
end
