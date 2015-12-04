class CreateReccomendations < ActiveRecord::Migration
  def change
    create_table :reccomendations do |t|
      t.text :opinion
      t.references :user, index: true, foreign_key: true
      t.references :game, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :reccomendations, [:user_id, :game_id, :created_at]
  end
end
