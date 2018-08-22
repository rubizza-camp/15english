class DictionaryWordsController < ApplicationController
  before_action :set_dictionary_word, only: [:show, :edit, :update, :destroy]

  # GET /dictionary_words
  # GET /dictionary_words.json
  def index
    @dictionary_words = DictionaryWord.all
  end

  # GET /dictionary_words/1
  # GET /dictionary_words/1.json
  def show
  end

  # GET /dictionary_words/new
  def new
    @dictionary_word = DictionaryWord.new
  end

  # GET /dictionary_words/1/edit
  def edit
  end

  # POST /dictionary_words
  # POST /dictionary_words.json
  def create
    @dictionary_word = DictionaryWord.new(dictionary_word_params)

    respond_to do |format|
      if @dictionary_word.save
        format.html { redirect_to @dictionary_word, notice: 'Dictionary word was successfully created.' }
        format.json { render :show, status: :created, location: @dictionary_word }
      else
        format.html { render :new }
        format.json { render json: @dictionary_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dictionary_words/1
  # PATCH/PUT /dictionary_words/1.json
  def update
    respond_to do |format|
      if @dictionary_word.update(dictionary_word_params)
        format.html { redirect_to @dictionary_word, notice: 'Dictionary word was successfully updated.' }
        format.json { render :show, status: :ok, location: @dictionary_word }
      else
        format.html { render :edit }
        format.json { render json: @dictionary_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dictionary_words/1
  # DELETE /dictionary_words/1.json
  def destroy
    @dictionary_word.destroy
    respond_to do |format|
      format.html { redirect_to dictionary_words_url, notice: 'Dictionary word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dictionary_word
      @dictionary_word = DictionaryWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dictionary_word_params
      params.require(:dictionary_word).permit(:word, :dictionary)
    end
end
