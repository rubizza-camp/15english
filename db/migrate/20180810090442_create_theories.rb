class CreateTheories < ActiveRecord::Migration[5.2]
  def change
    create_table :theories do |t|
      t.integer :lesson_id

      t.timestamps
    end
    add_index :theories, :lesson_id
  end
end
