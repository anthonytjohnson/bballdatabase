require 'test_helper'

class PlayerStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_stat = player_stats(:one)
  end

  test "should get index" do
    get player_stats_url
    assert_response :success
  end

  test "should get new" do
    get new_player_stat_url
    assert_response :success
  end

  test "should create player_stat" do
    assert_difference('PlayerStat.count') do
      post player_stats_url, params: { player_stat: { assists: @player_stat.assists, blocks: @player_stat.blocks, def_rebounds: @player_stat.def_rebounds, field_goals: @player_stat.field_goals, field_goals_attempted: @player_stat.field_goals_attempted, field_throws_attempted: @player_stat.field_throws_attempted, free_throws: @player_stat.free_throws, games: @player_stat.games, games_started: @player_stat.games_started, league: @player_stat.league, minutes: @player_stat.minutes, off_rebounds: @player_stat.off_rebounds, personal_fouls: @player_stat.personal_fouls, player_id: @player_stat.player_id, steals: @player_stat.steals, team_id: @player_stat.team_id, three_point: @player_stat.three_point, three_point_attempted: @player_stat.three_point_attempted, turnovers: @player_stat.turnovers, year: @player_stat.year } }
    end

    assert_redirected_to player_stat_url(PlayerStat.last)
  end

  test "should show player_stat" do
    get player_stat_url(@player_stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_stat_url(@player_stat)
    assert_response :success
  end

  test "should update player_stat" do
    patch player_stat_url(@player_stat), params: { player_stat: { assists: @player_stat.assists, blocks: @player_stat.blocks, def_rebounds: @player_stat.def_rebounds, field_goals: @player_stat.field_goals, field_goals_attempted: @player_stat.field_goals_attempted, field_throws_attempted: @player_stat.field_throws_attempted, free_throws: @player_stat.free_throws, games: @player_stat.games, games_started: @player_stat.games_started, league: @player_stat.league, minutes: @player_stat.minutes, off_rebounds: @player_stat.off_rebounds, personal_fouls: @player_stat.personal_fouls, player_id: @player_stat.player_id, steals: @player_stat.steals, team_id: @player_stat.team_id, three_point: @player_stat.three_point, three_point_attempted: @player_stat.three_point_attempted, turnovers: @player_stat.turnovers, year: @player_stat.year } }
    assert_redirected_to player_stat_url(@player_stat)
  end

  test "should destroy player_stat" do
    assert_difference('PlayerStat.count', -1) do
      delete player_stat_url(@player_stat)
    end

    assert_redirected_to player_stats_url
  end
end
