# frozen_string_literal: true

class DictionariesController < ApplicationController
  before_action :set_dictionary, only: [:show]

  def index
    @dictionary = Dictionary.new
  end

  def show
    @courses = Course.all
    @words = current_user.dictionary.words
    @words = @words.where("en LIKE ?", "#{params[:letter]}%") unless params[:letter].nil?
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
  def set_dictionary
      @dictionary = Dictionary.find(params[:id])
  end

  def dictionary_params
    params.require(:dictionary).permit(:user, :dictionary_word)
  end
end
