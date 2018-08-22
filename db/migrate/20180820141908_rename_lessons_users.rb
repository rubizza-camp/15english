class RenameLessonsUsers < ActiveRecord::Migration[5.2]
  def self.up
    rename_table :lessons_users, :learning_process_states
  end

  def self.down
    rename_table :learning_process_states, :lessons_users
  end
end
