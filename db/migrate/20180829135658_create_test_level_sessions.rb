class CreateTestLevelSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :test_level_sessions do |t|
      t.references :user
      t.references :test_level
    end
  end
end
