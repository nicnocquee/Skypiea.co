class AddFieldsToStickers < ActiveRecord::Migration
  def change
    add_column :stickers, :description, :string
    add_column :stickers, :number_of_stickers, :integer
    add_column :stickers, :views, :integer
    add_column :stickers, :likes, :integer
    add_column :stickers, :price, :float
    add_column :stickers, :file, :string
    add_column :stickers, :screenshot, :string
    add_reference :stickers, :user, index: true
  end
end
