class DropUselessTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :pages
    drop_table :image_questions
    drop_table :text_questions
    drop_table :radio_questions
    drop_table :radio_image_text_questions
    drop_table :radio_image_questions
    drop_table :revisions
    drop_table :practices
    drop_table :theories
  end
end
