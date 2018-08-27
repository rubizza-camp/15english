class RenameAnswerFromQuestions < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :questions, :answer, :correct_answer
  end

  def self.down
    rename_column :questions, :correct_answer, :answer
  end
end
