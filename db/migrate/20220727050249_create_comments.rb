class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :anecdote_id
      t.integer :parent_id
      t.timestamps
    end
  end
end
