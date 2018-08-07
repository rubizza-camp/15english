class SubjectsController < ApplicationController
  include Pundit
  protect_from_forgery
  before_action :set_subject, only: [:update, :edit, :destroy, :show]

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.create(subject_params)
    redirect_to subjects_url
  end

  def index
    @subjects = Subject.all
  end

  def show
    set_subject
  end

  def update
    set_subject.update(subject_params)
    redirect_to subjects_url
  end

  def destroy
    set_subject.destroy
    redirect_to subjects_url
  end

  def edit
    set_subject
  end

  private

  def set_subject
    @subject = Subject.find(params[:id])
  end

  def subject_params
    params.require(:subject).permit(:title)
  end
end
