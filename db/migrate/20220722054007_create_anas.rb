class CreateAnas < ActiveRecord::Migration[5.2]
  def change
    create_table :anas do |t|
      t.text :title
      t.text :content
      t.integer :upvotes, default: 0
      t.integer :user_id
      t.timestamps
    end
  end
end
