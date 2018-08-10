class CreateTheories < ActiveRecord::Migration[5.2]
  def change
    create_table :theories do |t|
      t.integer :question_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
