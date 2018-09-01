class AddTestLevelSessionIdToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_belongs_to :answers, :test_level_session
  end
end
