class LearningProcessStateIdToAnswers < ActiveRecord::Migration[5.2]
  def self.up
    add_column :answers, :learning_process_state_id, :integer
    add_index :answers, :learning_process_state_id
  end

  def self.down
    remove_column :answers, :learning_process_state_id, :integer
  end
end
