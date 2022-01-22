class CreatePlayerStats < ActiveRecord::Migration[6.0]
  def change
    create_table :player_stats do |t|
      t.references :player, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.integer :year
      t.string :league
      t.integer :games
      t.integer :games_started
      t.integer :minutes
      t.integer :field_goals
      t.integer :field_goals_attempted
      t.integer :three_point
      t.integer :three_point_attempted
      t.integer :free_throws
      t.integer :field_throws_attempted
      t.integer :off_rebounds
      t.integer :def_rebounds
      t.integer :assists
      t.integer :steals
      t.integer :blocks
      t.integer :turnovers
      t.integer :personal_fouls

      t.timestamps
    end
  end
end
