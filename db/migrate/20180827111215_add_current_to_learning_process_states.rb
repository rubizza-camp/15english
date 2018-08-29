class AddCurrentToLearningProcessStates < ActiveRecord::Migration[5.2]
  def change
    add_column :learning_process_states, :current, :boolean, default: false
  end
end
