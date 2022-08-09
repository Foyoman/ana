class CreateAnecdotes < ActiveRecord::Migration[5.2]
  def change
    create_table :anecdotes do |t|
      t.text :title
      t.text :content
      t.integer :upvotes, default: 0
      t.integer :user_id
      t.integer :tag_id
      t.timestamps
    end
  end
end