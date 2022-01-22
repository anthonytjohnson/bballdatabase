json.extract! player_stat, :id, :player_id, :team_id, :year, :league, :games, :games_started, :minutes, :field_goals, :field_goals_attempted, :three_point, :three_point_attempted, :free_throws, :field_throws_attempted, :off_rebounds, :def_rebounds, :assists, :steals, :blocks, :turnovers, :personal_fouls, :created_at, :updated_at
json.url player_stat_url(player_stat, format: :json)
