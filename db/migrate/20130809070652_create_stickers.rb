class CreateStickers < ActiveRecord::Migration
  def change
    create_table :stickers do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.integer :number_of_stickers
      t.integer :views
      t.integer :likes
      t.float :price
      t.string :file
      t.string :screenshot

      t.timestamps
    end
    add_index :stickers, [:user_id, :created_at]
  end
end
