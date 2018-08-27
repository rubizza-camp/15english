# frozen_string_literal: true

# comment for Users helper
module UsersHelper
  def current_course_id
    current_lesson = current_user.learning_process_states.where(current: true)
    current_lesson.first.lesson.subject.course.id
  end
end
