class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :photo
      t.text :description
      t.integer :user_id
      t.timestamp null: false
    end
    add_index :posts, :user_id
  end
end