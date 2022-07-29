class AddSortToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sort, :text, default: 'top'
  end
end
