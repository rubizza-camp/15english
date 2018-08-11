class CreateRadioQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :radio_questions do |t|
      t.string :title
      t.string :first_option
      t.string :second_option
      t.string :third_option
      t.string :answer

      t.timestamps
    end
  end
end
