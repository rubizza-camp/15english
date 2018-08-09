class CreateUserLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :user_lessons do |t|
      t.belongs_to :lesson, index: true
      t.integer :user_subject_id
      t.integer :lesson_id
      t.integer :user_id
      t.timestamps
    end
  end
end
