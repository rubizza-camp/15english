class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.belongs_to :image_question, index: true
      t.belongs_to :text_question, index: true
      t.belongs_to :radio_image_question, index: true
      t.belongs_to :radio_question, index: true
      t.belongs_to :radio_image_text_question, index: true
      t.belongs_to :revision, index: true
      t.belongs_to :theory, index: true
      t.belongs_to :practice, index: true
      t.belongs_to :sub_test, index: true

      t.timestamps
    end
  end
end
