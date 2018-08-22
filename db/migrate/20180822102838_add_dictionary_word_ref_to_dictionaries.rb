class AddDictionaryWordRefToDictionaries < ActiveRecord::Migration[5.2]
  def change
    add_reference :dictionaries, :dictionary_word, foreign_key: true
  end
end
