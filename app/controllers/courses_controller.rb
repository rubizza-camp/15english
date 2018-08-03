class CoursesController < ApplicationController

  def show
  end

  def new
    @courses = Course.new
  end

  def index
    @courses = Course.all
  end

  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { reirect_to @course, 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        # format.json { render json: @course.errors, status: :unprocessable_entity } 
      end
  end

  def update
    respond_to do |format|
    if @course.update(course_params)
      format.html { redirect_to @course, notice: 'Course was successfully updated.' }
      format.json { render :show, status: :ok, location: @course }
    else
      format.html { render :edit }
      #format.json { render json: @course.errors, status: :unprocessable_entity }
    end
  end
    
  end

  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to course_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def course_params
      params.require(:course).permit(:name_course, :user_id)
    end

end
