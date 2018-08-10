class CreateRevisions < ActiveRecord::Migration[5.2]
  def change
    create_table :revisions do |t|
      t.integer :question_id
      t.integer :lesson_id

      t.timestamps
    end
    add_index :revisions, :lesson_id
  end
end
