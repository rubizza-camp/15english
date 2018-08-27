class AddWordRefToLessons < ActiveRecord::Migration[5.2]
  def change
    add_reference :lessons, :word, foreign_key: true
  end
end
