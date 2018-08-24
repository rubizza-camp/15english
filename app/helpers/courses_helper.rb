# frozen_string_literal: true

# comment for Courses helper
module CoursesHelper
  def current_lesson(lesson_id)
    lesson_id == current_lesson_id
  end

  private

    def current_lesson_id
      @course.subjects.each do |subject|
        subject.lessons.each do |lesson|
          return lesson.id unless lesson.learning_process_states.first.passed
        end
      end
    end
end
