class CreateCommunities < ActiveRecord::Migration[8.0]
  def change
    create_table :communities do |t|
      t.references :account
      t.string :name
      t.string :url
      t.text :rules
      t.integer :total_members

      t.timestamps
    end
  end
end
