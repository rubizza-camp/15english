class CreatePractices < ActiveRecord::Migration[5.2]
  def change
    create_table :practices do |t|
      t.integer :page_id
      t.integer :lesson_id

      t.timestamps
    end
    add_index :practices, :lesson_id
    add_index :practices, :page_id
  end
end
