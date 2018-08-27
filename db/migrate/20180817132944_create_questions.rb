class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string "title"
      t.string "image"
      t.string "text"
      t.string "answer"
      t.string "first_option"
      t.string "second_option"
      t.string "third_option"
      t.references :questionable, polymorphic: true, index: true
    end
  end
end
