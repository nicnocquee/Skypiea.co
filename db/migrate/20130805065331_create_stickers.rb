class CreateStickers < ActiveRecord::Migration
  def change
    create_table :stickers do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
