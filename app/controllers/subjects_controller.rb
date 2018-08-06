class SubjectsController < ApplicationController
  def show
    @subject = Subject.all
  end

  def create
    @subject = Subject.create(new_subject)
    render 'show'
  end

  def delete
    render 'show'
  end

  def edit

  end

  private
  def new_subject
    params.require(:title).permit(:lesson_id)
  end

end
