# frozen_string_literal: true

# comment for StaticPages helper
module StaticPagesHelper
  def current_course
    current_user.courses.first.title
  end

  def current_subjects
    current_user.courses.first.subjects
  end

  def current_lesson_id
    current_user.learning_process_states.where(passed: false).first.lesson_id
  end
end
