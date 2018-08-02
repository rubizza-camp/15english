class CreateThemeBloks < ActiveRecord::Migration[5.2]
  def change
    create_table :theme_bloks do |t|

      t.timestamps
    end
  end
end
