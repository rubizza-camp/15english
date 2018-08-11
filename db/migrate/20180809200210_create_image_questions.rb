class CreateImageQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :image_questions do |t|
      t.string :title
      t.string :image
      t.string :text
      t.string :answer

      t.timestamps
    end
  end
end
