class CreateDictionaryWords < ActiveRecord::Migration[5.2]
  def change
    create_table :dictionary_words do |t|
      t.reference :word
      t.reference :dictionary

      t.timestamps
    end
  end
end
