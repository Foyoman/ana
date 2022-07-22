class CreateAnecdotesTags < ActiveRecord::Migration[5.2]
  def change
    create_table :anecdotes_tags, :id => false do |t|
      t.integer :anecdote_id
      t.integer :tag_id
    end
  end
end
