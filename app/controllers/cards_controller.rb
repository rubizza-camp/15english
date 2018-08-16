# frozen_string_literal: tru

# class CardsController
class CardsController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def new
    @card = Card.new
  end

  def show
  end

  def index
    @card = Card.new
    @cards = Card.all
  end

  def create
    @card = Card.create(card_params)
    redirect_to cards_url
  end

  def edit
  end

  def update
    @card.update(card_params)
    redirect_to cards_url
  end

  def destroy
    @card.destroy
    redirect_to cards_url
  end

  private

    def set_course
      @card = Card.find(params[:id])
    end

    def card_params
      params.require(:card).permit(:image, :text)
    end
end
