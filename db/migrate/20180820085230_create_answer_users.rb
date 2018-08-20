class CreateAnswerUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_users do |t|
      t.integer :id_question
      t.integer :id_user
      t.string :user_answer

      t.timestamps
    end
  end
end
