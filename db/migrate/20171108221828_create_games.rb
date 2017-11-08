class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.integer :wpm
      t.boolean :game_won
    end
  end
end
