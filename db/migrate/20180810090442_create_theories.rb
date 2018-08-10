class CreateTheories < ActiveRecord::Migration[5.2]
  def change
    create_table :theories do |t|
      t.integer :page_id
      t.integer :lesson_id

      t.timestamps
    end
    add_index :theories, :lesson_id
    add_index :theories, :page_id
  end
end
