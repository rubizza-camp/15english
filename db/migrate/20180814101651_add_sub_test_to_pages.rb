class AddSubTestToPages < ActiveRecord::Migration[5.2]
  def change
    add_reference :pages, :sub_test, index: true
  end
end
