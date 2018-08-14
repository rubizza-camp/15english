class RemoveImageFromRadioImageQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :radio_image_questions, :image, :string
  end
end
