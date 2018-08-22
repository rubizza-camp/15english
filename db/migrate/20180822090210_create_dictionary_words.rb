class CreateDictionaryWords < ActiveRecord::Migration[5.2]
  def change
    create_table :dictionaries do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end

    create_table :dictionary_words do |t|
      t.references :word, foreign_key: true
      t.references :dictionary, foreign_key: true

      t.timestamps
    end
  end
end
