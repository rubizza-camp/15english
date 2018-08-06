class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :title
      t.integer :lesson_id
      t.timestamps
    end
  end
end
