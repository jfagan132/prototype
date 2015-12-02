class AddIndexToGamesTitle < ActiveRecord::Migration
  def change
    add_index :games, :title, unique: true
  end
end
