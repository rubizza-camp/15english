class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :url
      t.string :text
      t.timestamps
    end
  end
end
