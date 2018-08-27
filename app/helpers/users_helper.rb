# frozen_string_literal: true

# comment for Users helper
module UsersHelper
  def current_course_id
    current_lesson = current_user.learning_process_states.find_by(current: true).lesson
    current_lesson.subject.course.id
  end
end
