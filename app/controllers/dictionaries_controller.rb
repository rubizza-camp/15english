# frozen_string_literal: true

class DictionariesController < ApplicationController
  before_action :set_dictionary, only: [:index, :show, :edit, :update]

  def index

    redirect_to :show, params: :words
  end

  def show
    if params[:letter].nil?
      @words = current_user.dictionary.words
    else
      @words = current_user.dictionary.words.where("en LIKE ?", "#{params[:letter]}%")
    end
  end

  def new
    @dictionary = Dictionary.new
  end

  def edit
  end

  def create
    @dictionary = Dictionary.new(dictionary_params)

    respond_to do |format|
      if @dictionary.save
        format.html { redirect_to @dictionary, notice: "Dictionary was successfully created." }
        format.json { render :show, status: :created, location: @dictionary }
      else
        format.html { render :new }
        format.json { render json: @dictionary.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @dictionary.update(dictionary_params)
        format.html { redirect_to @dictionary, notice: "Dictionary was successfully updated." }
        format.json { render :show, status: :ok, location: @dictionary }
      else
        format.html { render :edit }
        format.json { render json: @dictionary.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dictionary.destroy
    respond_to do |format|
      format.html { redirect_to dictionaries_url, notice: 'Dictionary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_dictionary
      @dictionary = Dictionary.find(params[:id])
    end

    def dictionary_params
      params.require(:dictionary).permit(:user, :dictionary_word)
    end
end
