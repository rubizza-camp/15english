class AddIndexToLessonsUsers < ActiveRecord::Migration[5.2]
  def change
    add_index :lessons_users, :user_id
    add_index :lessons_users, :lesson_id
  end
end
