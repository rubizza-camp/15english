class CreateUserSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :user_subjects do |t|
      t.belongs_to :subject, index: true
      t.integer :user_course_id
      t.integer :subject_id
      t.integer :user_id
      t.timestamps
    end
  end
end
