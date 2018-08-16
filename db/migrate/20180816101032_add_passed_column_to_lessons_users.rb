class AddPassedColumnToLessonsUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons_users, :passed, :boolean, default: false
  end
end
