class ChangeUserIdInAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons_users, :id, :integer, primary_key: true
    add_column :lessons_users, :answer_id, :integer, index: true, default: 'nil'
  end
end
