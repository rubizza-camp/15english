class SubjectsController < ApplicationController
  before_action :admin_user, only: [:show, :edit, :update, :destroy, :index]
  before_action :set_subject, only: [:update, :edit, :destroy, :show]

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.create(subject_params)
    redirect_to subjects_url
  end

  def index
    @subject = Subject.new
    @subjects = Subject.all
  end

  def update
    @subject.update(subject_params)
    redirect_to subjects_url
  end

  def destroy
    @subject.destroy
    redirect_to subjects_url
  end

  def edit
  end

  def show
  end

  private

    def set_subject
      @subject = Subject.find(params[:id])
    end

    def subject_params
      params.require(:subject).permit(:title)
    end
end
