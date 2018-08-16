class CreateSubTests < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_tests do |t|
      t.string :title
      t.timestamps
    end
  end
end
