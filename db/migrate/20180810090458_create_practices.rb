class CreatePractices < ActiveRecord::Migration[5.2]
  def change
    create_table :practices do |t|
      t.integer :lesson_id

      t.timestamps
    end
    add_index :practices, :lesson_id
  end
end
