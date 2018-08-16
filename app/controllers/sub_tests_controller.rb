# frozen_string_literal: true

class SubTestsController < ApplicationController
  before_action :find_subject, only: [:show, :edit, :update, :destroy, :index]

  def find_subject
    @subject = Subject.first #Subject.find(params[:id])
  end
end
