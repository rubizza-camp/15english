class RemoveImageFromRadioImageTextQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :radio_image_text_questions, :image, :string
  end
end
