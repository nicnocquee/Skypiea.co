class AddDefaultValueOnArtistToUsers < ActiveRecord::Migration
  def change
  	change_column :users, :artist, :boolean, :default => false
  end
end
