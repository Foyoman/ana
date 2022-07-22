class CreateAnasTags < ActiveRecord::Migration[5.2]
  def change
    create_table :anas_tags, :id => false do |t|
      t.integer :ana_id
      t.integer :tag_id
    end
  end
end
