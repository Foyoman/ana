class CreateAnasAnecdotes < ActiveRecord::Migration[5.2]
  def change
    create_table :anas_anecdotes do |t|
      t.integer :ana_id
      t.integer :anecdote_id
    end
  end
end
