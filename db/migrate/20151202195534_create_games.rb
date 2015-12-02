class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :genre
      t.string :rating

      t.timestamps null: false
    end
  end
end
