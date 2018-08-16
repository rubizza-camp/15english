# frozen_string_literal: true

class SubTestsController < ApplicationController
  before_action :find_subject, only: [:show, :edit, :update, :destroy]

  def find_subject
    @subject = Subject.find(params[:id])
  end
end
