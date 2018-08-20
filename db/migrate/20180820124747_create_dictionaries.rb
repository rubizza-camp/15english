class CreateDictionaries < ActiveRecord::Migration[5.2]
  def change
    create_table :dictionaries do |t|
      t.string :word
      t.string :translated_word
      t.reference :user_id
      t.reference :lesson_id

      t.timestamps
    end
  end
end
