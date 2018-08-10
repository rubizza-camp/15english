class CreateRadioImageQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :radio_image_questions do |t|
      t.string :title
      t.string :image
      t.string :first_option
      t.string :second_option
      t.string :third_option
      t.string :answer

      t.timestamps
    end
  end
end
