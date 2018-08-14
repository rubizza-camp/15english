class RemoveImageFromImageQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :image_questions, :image, :string
  end
end
