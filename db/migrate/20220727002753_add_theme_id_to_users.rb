class AddThemeIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :theme_id, :integer
    remove_column :themes, :user_id, :integer
  end
end
