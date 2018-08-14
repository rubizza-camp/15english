class CreateRadioImageTextQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :radio_image_text_questions do |t|
      t.string :title
      t.string :image
      t.string :text
      t.string :first_option
      t.string :second_option
      t.string :answer

      t.timestamps
    end
  end
end
