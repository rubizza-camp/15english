class CreateTextQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :text_questions do |t|
      t.string :title
      t.string :phrase
      t.string :text
      t.string :answer

      t.timestamps
    end
  end
end
