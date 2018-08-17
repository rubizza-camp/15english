module StaticPagesHelper
  def current_course
    current_user.courses.first.title
  end

  def current_subjects
    current_user.courses.first.subjects
  end

  def current_lesson
    (current_user.lessons_user.where passed: false).first.lesson_id
  end
end
