class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.references :account
      t.references :community
      t.string :title
      t.text :body
      t.integer :upvotes_count, default: 0
      t.integer :downvotes_count, default: 0
      t.integer :comments_count, default: 0
      t.timestamps
    end
  end
end
