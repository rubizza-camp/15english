class AddDictionaryRefToLessons < ActiveRecord::Migration[5.2]
  def change
    add_reference :lessons, :dictionary_id, foreign_key: true
  end
end
