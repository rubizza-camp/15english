# frozen_string_literal: true

# This class represents ImageQuestionsController
class ImageQuestionsController < ApplicationController
  before_action :set_image_question, only: [:show, :edit, :update, :destroy]

  # GET /image_questions
  # GET /image_questions.json
  def index
    @image_questions = ImageQuestion.all
  end

  # GET /image_questions/1
  # GET /image_questions/1.json
  def show
  end

  # GET /image_questions/new
  def new
    @image_question = ImageQuestion.new
  end

  # GET /image_questions/1/edit
  def edit
  end

  # POST /image_questions
  # POST /image_questions.json
  def create
    @image_question = ImageQuestion.new(image_question_params)

    respond_to do |format|
      if @image_question.save
        format.html { redirect_to @image_question, notice: "Image question was successfully created." }
        format.json { render :show, status: :created, location: @image_question }
      else
        format.html { render :new }
        format.json { render json: @image_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_questions/1
  # PATCH/PUT /image_questions/1.json
  def update
    respond_to do |format|
      if @image_question.update(image_question_params)
        format.html { redirect_to @image_question, notice: "Image question was successfully updated." }
        format.json { render :show, status: :ok, location: @image_question }
      else
        format.html { render :edit }
        format.json { render json: @image_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_questions/1
  # DELETE /image_questions/1.json
  def destroy
    @image_question.destroy
    respond_to do |format|
      format.html { redirect_to image_questions_url, notice: "Image question was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_question
      @image_question = ImageQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_question_params
      params.require(:image_question).permit(:title, :image, :text, :answer)
    end
end
