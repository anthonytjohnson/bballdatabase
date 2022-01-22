require "application_system_test_case"

class PlayerStatsTest < ApplicationSystemTestCase
  setup do
    @player_stat = player_stats(:one)
  end

  test "visiting the index" do
    visit player_stats_url
    assert_selector "h1", text: "Player Stats"
  end

  test "creating a Player stat" do
    visit player_stats_url
    click_on "New Player Stat"

    fill_in "Assists", with: @player_stat.assists
    fill_in "Blocks", with: @player_stat.blocks
    fill_in "Def rebounds", with: @player_stat.def_rebounds
    fill_in "Field goals", with: @player_stat.field_goals
    fill_in "Field goals attempted", with: @player_stat.field_goals_attempted
    fill_in "Field throws attempted", with: @player_stat.field_throws_attempted
    fill_in "Free throws", with: @player_stat.free_throws
    fill_in "Games", with: @player_stat.games
    fill_in "Games started", with: @player_stat.games_started
    fill_in "League", with: @player_stat.league
    fill_in "Minutes", with: @player_stat.minutes
    fill_in "Off rebounds", with: @player_stat.off_rebounds
    fill_in "Personal fouls", with: @player_stat.personal_fouls
    fill_in "Player", with: @player_stat.player_id
    fill_in "Steals", with: @player_stat.steals
    fill_in "Team", with: @player_stat.team_id
    fill_in "Three point", with: @player_stat.three_point
    fill_in "Three point attempted", with: @player_stat.three_point_attempted
    fill_in "Turnovers", with: @player_stat.turnovers
    fill_in "Year", with: @player_stat.year
    click_on "Create Player stat"

    assert_text "Player stat was successfully created"
    click_on "Back"
  end

  test "updating a Player stat" do
    visit player_stats_url
    click_on "Edit", match: :first

    fill_in "Assists", with: @player_stat.assists
    fill_in "Blocks", with: @player_stat.blocks
    fill_in "Def rebounds", with: @player_stat.def_rebounds
    fill_in "Field goals", with: @player_stat.field_goals
    fill_in "Field goals attempted", with: @player_stat.field_goals_attempted
    fill_in "Field throws attempted", with: @player_stat.field_throws_attempted
    fill_in "Free throws", with: @player_stat.free_throws
    fill_in "Games", with: @player_stat.games
    fill_in "Games started", with: @player_stat.games_started
    fill_in "League", with: @player_stat.league
    fill_in "Minutes", with: @player_stat.minutes
    fill_in "Off rebounds", with: @player_stat.off_rebounds
    fill_in "Personal fouls", with: @player_stat.personal_fouls
    fill_in "Player", with: @player_stat.player_id
    fill_in "Steals", with: @player_stat.steals
    fill_in "Team", with: @player_stat.team_id
    fill_in "Three point", with: @player_stat.three_point
    fill_in "Three point attempted", with: @player_stat.three_point_attempted
    fill_in "Turnovers", with: @player_stat.turnovers
    fill_in "Year", with: @player_stat.year
    click_on "Update Player stat"

    assert_text "Player stat was successfully updated"
    click_on "Back"
  end

  test "destroying a Player stat" do
    visit player_stats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Player stat was successfully destroyed"
  end
end
