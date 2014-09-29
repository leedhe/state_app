class AddThemeToState < ActiveRecord::Migration
  def change
    add_column :states, :theme, :string
  end
end
