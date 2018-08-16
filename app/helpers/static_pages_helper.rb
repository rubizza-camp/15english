module StaticPagesHelper

  def current_course
    current_user.courses.first.title
  end

  def current_subjects
    current_user.courses.first.subjects
  end

  def lesson_now
    current_user.user_lessons.first.lesson_id
  end

end
