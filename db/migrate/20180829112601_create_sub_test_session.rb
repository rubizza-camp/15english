class CreateSubTestSession < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_test_sessions do |t|
      t.references :user
      t.references :sub_test_sessions
    end
  end
end
