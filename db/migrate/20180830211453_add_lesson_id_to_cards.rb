class AddLessonIdToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :lesson_id, :integer, index: true
  end
end
