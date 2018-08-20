class AddDictionaryRefToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :dictionary_id, foreign_key: true
  end
end
