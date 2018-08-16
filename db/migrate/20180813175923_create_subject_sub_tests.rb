class CreateSubjectSubTests < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_sub_tests do |t|
      t.belongs_to :subject, index: true
      t.belongs_to :sub_test, index: true
      t.timestamps
    end
  end
end
