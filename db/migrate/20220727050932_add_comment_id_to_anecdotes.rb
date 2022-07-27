class AddCommentIdToAnecdotes < ActiveRecord::Migration[5.2]
  def change
    add_column :anecdotes, :comment_id, :integer
  end
end
