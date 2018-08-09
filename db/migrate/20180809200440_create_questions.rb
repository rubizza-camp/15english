class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :image_questions_id
      t.integer :text_questions_id
      t.integer :radio_image_questions_id
      t.integer :radio_questions_id
      t.integer :radio_image_text_questions_id

      t.timestamps
    end
  end
end
