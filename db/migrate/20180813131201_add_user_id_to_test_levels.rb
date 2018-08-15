class AddUserIdToTestLevels < ActiveRecord::Migration[5.2]
  def change
    add_column :test_levels, :user_id, :integer
  end
end
