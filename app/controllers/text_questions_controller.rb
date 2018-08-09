class TextQuestionsController < ApplicationController
  before_action :set_text_question, only: [:show, :edit, :update, :destroy]

  # GET /text_questions
  # GET /text_questions.json
  def index
    @text_questions = TextQuestion.all
  end

  # GET /text_questions/1
  # GET /text_questions/1.json
  def show
  end

  # GET /text_questions/new
  def new
    @text_question = TextQuestion.new
  end

  # GET /text_questions/1/edit
  def edit
  end

  # POST /text_questions
  # POST /text_questions.json
  def create
    @text_question = TextQuestion.new(text_question_params)

    respond_to do |format|
      if @text_question.save
        format.html { redirect_to @text_question, notice: 'Text question was successfully created.' }
        format.json { render :show, status: :created, location: @text_question }
      else
        format.html { render :new }
        format.json { render json: @text_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_questions/1
  # PATCH/PUT /text_questions/1.json
  def update
    respond_to do |format|
      if @text_question.update(text_question_params)
        format.html { redirect_to @text_question, notice: 'Text question was successfully updated.' }
        format.json { render :show, status: :ok, location: @text_question }
      else
        format.html { render :edit }
        format.json { render json: @text_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_questions/1
  # DELETE /text_questions/1.json
  def destroy
    @text_question.destroy
    respond_to do |format|
      format.html { redirect_to text_questions_url, notice: 'Text question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_question
      @text_question = TextQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_question_params
      params.require(:text_question).permit(:title, :phrase, :text, :answer)
    end
end
