class AddSubTestSessionIdToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_belongs_to :answers, :sub_test_session_id
  end
end
