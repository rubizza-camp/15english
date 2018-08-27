# frozen_string_literal: true

# comment for Courses helper
module CoursesHelper

  def subjects_of_user
    @subjects.each_with_object({}) do |subject, sub_lessons|
      sub_lessons[subject.title] = @lessons.where(subject_id: subject.id).sort
    end
  end

  def current_lessons
    current_user.learning_process_states
  end
end
