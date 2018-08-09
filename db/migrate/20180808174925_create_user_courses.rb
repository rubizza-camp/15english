class CreateUserCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_courses do |t|
      t.belongs_to :course, index: true
      t.integer :user_id
      t.integer :course_id
      t.timestamps
    end
  end
end
