class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :comment
      t.integer :sticker_id

      t.timestamps
    end
    add_index :comments, [:sticker_id, :created_at]
  end
end
