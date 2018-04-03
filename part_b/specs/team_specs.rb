require("minitest/autorun")
require("minitest/rg")
require_relative("../team.rb")

class TestTeam < MiniTest::Test

	def setup
		#all Instances have to have different var names here
		@team = Team.new("Barcelona", ["Messi", "Xavi"], "Ernesto Valverde")
		#@team2 = Team.new("Real Madrid", ["Rinaldo", ""], "Zidane")
	end

	def test_team_name
		#@team = Team.new("Barcelona", ["Messi", "Xavi"], "Ernesto Valverde")
		assert_equal("Barcelona", @team.team_name)
	end	
	
	def test_players_name
		#@team = Team.new("Barcelona", ["Messi", "Xavi"], "Ernesto Valverde")
		assert_equal(["Messi", "Xavi"], @team.players)
	end

	def test_coach_name
		#@team = Team.new("Barcelona", ["Messi", "Xavi"], "Ernesto Valverde")
		assert_equal("Ernesto Valverde", @team.coach)
	end

	def test_set_team_name
		#@team = Team.new("Real Madrid", ["Messi", "Xavi"], "Ernesto Valverde")
		@team.team_name = "Real Madrid"
		assert_equal("Real Madrid", @team.team_name)
	end	

	def test_set_players_name
		#@team = Team.new("Barcelona", ["Messi", "Rinaldo"], "Ernesto Valverde")
		@team.players = ["Messi", "Rinaldo"]
		assert_equal(["Messi", "Rinaldo"], @team.players)
	end

	def test_set_coach_name
		#@team = Team.new("Barcelona", ["Messi", "Rinaldo"], "Dave")
		@team.coach = "Dave"
		assert_equal("Dave", @team.coach)
	end

	def test_add_player
    	assert_equal(["Messi", "Xavi", "Maradona"], @team.add_player("Maradona"))
	end

	def test_find_player_by_name
    	assert_equal("Messi", @team.find_player_by_name("Messi"))
	end

	def test_add_points
    	assert_equal(3, @team.add_points("win"))
	end


end
