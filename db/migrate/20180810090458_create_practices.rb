class CreatePractices < ActiveRecord::Migration[5.2]
  def change
    create_table :practices do |t|
      t.integer :question_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
