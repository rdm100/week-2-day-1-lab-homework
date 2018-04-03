 class Team

 	attr_accessor :team_name, :players, :coach

 def initialize(team_name, players, coach)

 	# attr_accessor :name, :cohort

    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0

  end

 #  	def team_name() 
	# 	return @team_name
	# end

	# def players() 
	# 	return @players
	# end	

	# def coach() 
	# 	return @coach
	# end

	# def set_team_name(team_name)
	# 	@team_name = team_name
	# end	

	# def set_players_name(players)
	# 	@players = players
	# end	

	# def set_coach_name(coach) 
	# 	@coach = coach
	# end	

	def add_player(player_name)
		@players.push(player_name)
	end	

	def find_player_by_name(name)
		for player in @players 
			if player == name
			return player
		end
		end
	end

	def add_points(result)
    if result == "win"
      @points += 3
    elsif result == "draw"
      @points += 1
    end

    return @points
	end


end