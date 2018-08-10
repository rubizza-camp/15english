class CreateRevisions < ActiveRecord::Migration[5.2]
  def change
    create_table :revisions do |t|
      t.integer :page_id
      t.integer :lesson_id

      t.timestamps
    end
    add_index :revisions, :lesson_id
    add_index :revisions, :page_id
  end
end
