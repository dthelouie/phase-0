class Fantasy_Basketball
	attr_reader :league
	attr_writer :favorite_team
	attr_accessor :owner, :team_name
	def initialize
		@league = "Retirement Year"
		@favorite_team = "Los Angeles Clippers"
		@team_name = "Festivus Ezeli"
		@owner = "David Louie"
		

		@roster = {
			"Stephen Curry" => ["PG", "SG", "G", "Utility"],
			"Kevin Durant" => ["SF", "PF", "F", "Utility"],
			"Blake Griffin" => ["PF", "C", "F", "Utility"],
			"Paul Millsap" => ["PF", "C", "F", "Utility"],
			"DeAndre Jordan" => ["C", "Utility"],
			"Rajon Rondo" => ["PG", "G", "Utility"],
			"Paul George" => ["SG", "SF", "PF", "G", "F", "Utility"],
			"Wesley Matthews" => ["SG", "SF", "G", "F" "Utility"],
			"Kent Bazemore" => ["SG", "SF", "G", "F", "Utility"],
			"Dwyane Wade" => ["PG", "SG", "G", "Utility"],
			"Dirk Nowitzki" => ["PF", "C", "F", "Utility"],
			"Festus Ezeli" => ["C", "Utility"],
			"Trevor Ariza" => ["SG", "SF", "G", "F", "Utility"]
		}

		@active_roster = {
			"PG" => nil, # 1 player per position
			"SG" => nil,
			"G" => nil,
			"SF" => nil,
			"PF" => nil,
			"F" => nil,
			"C" => nil,
			"Utility" => [] # 2 players max
		}
		
		@Bench = [] # any amount of players
	end

	def roster
		puts
		puts "Roster:"
		@roster.each do |player, positions| puts "#{player}: #{positions}"
		end
		puts
	end

	def active_roster
		puts
		puts "Active Roster:"
		@active_roster.each do |position, player| puts "#{position}: #{player}"
		end
		puts
	end

	def show_bench
		puts
		puts "Benched Players:"
		@Bench.each do |player|
			puts player
		end
		puts
	end

	def start_player(player, position)
		if @roster.has_key?(player) == false
			raise ArgumentError, "That player is not on your roster!"
		elsif @roster[player].include?(position) == false
			raise ArgumentError, "That player doesn't play that position!"
		elsif @active_roster.has_value?(player)
			delete = @active_roster.key(player)
			@active_roster[delete] = nil
		end
		if position == "Utility"
			if @active_roster[position].length < 2
				@active_roster[position] << player
				puts "Moved #{player} to Utility"
			elsif @active_roster[position].length == 2
				i = 0
				while i < @active_roster[position].length
					puts "Would you like to replace #{@active_roster[position][i]} with #{player}? (y/n)"
					ans = gets.chomp
					if ans == "y"
						@Bench << @active_roster[position][i]
						puts "Benched #{@Bench[-1]}"
						@active_roster[position][i] = player
						if @Bench.include?(player)
							@Bench.delete_if{|spot| spot == player}
						end
						puts "Started #{@active_roster[position][i]}"
						break
					elsif ans == "n"
						i += 1
					else
						puts "Invalid Response"
					end
				end
			end
		elsif @active_roster[position] == nil
			@active_roster[position] = player
			puts "Moved #{player} to #{position}"
		elsif @active_roster[position] != nil
			puts "Would you like to replace #{@active_roster[position]} with #{player}? (y/n)"
			ans = gets.chomp
			if ans == "y"
				puts "Benched #{@active_roster[position]}"
				@Bench << @active_roster[position]
				@active_roster[position] = player
				if @Bench.include?(player)
					@Bench.delete_if{|spot| spot == player}
				end
				puts "Starting #{@active_roster[position]}"
			elsif ans == "n"
				puts @active_roster[position]
			else
				puts "Invalid Response"
			end
		end


	end

	def bench_player(player)
		if @roster.has_key?(player) == false
			raise ArgumentError, "That player is not on your roster!"
		elsif @active_roster.values.include?(player) || @roster.has_key?(player) && (@active_roster.has_value?(player) == false)
			@Bench << player
			delete = @active_roster.key(player)
			@active_roster[delete] = nil
			puts "Benched #{player}"
		end
	end

	def drop_player(player)
		if @roster.has_key?(player) == false
			raise ArgumentError, "That player is not on your roster!"
		else
			@roster.delete(player)
			if @active_roster.has_value?(player)
			delete = @active_roster.key(player)
			@active_roster[delete] = nil
			end
			if @active_roster.values.include?(player)
				delete = @active_roster.key(player)
				@active_roster[delete] = nil
			elsif @active_roster["Utility"]
				@active_roster["Utility"].delete_at(@active_roster["Utility"].index(player))
			end
		end
	end

	def add_player(player, array_of_positions)
		@roster[player] = array_of_positions
		puts "Picked up #{player}"
	end

end

fantasy = Fantasy_Basketball.new
fantasy.start_player("Stephen Curry", "PG")
fantasy.start_player("Kevin Durant", "SF")
fantasy.start_player("Blake Griffin", "PF")
fantasy.start_player("DeAndre Jordan", "C")
fantasy.start_player("Paul George", "SG")
fantasy.start_player("Wesley Matthews", "G")
fantasy.start_player("Dirk Nowitzki", "Utility")
fantasy.start_player("Paul Millsap", "F")
fantasy.start_player("Trevor Ariza", "Utility")
fantasy.active_roster
fantasy.bench_player("Festus Ezeli")
fantasy.bench_player("Dwyane Wade")
fantasy.bench_player("Kent Bazemore")
fantasy.show_bench
puts fantasy.start_player("Rajon Rondo", "PG")
puts fantasy.active_roster
puts fantasy.drop_player("Trevor Ariza")
puts fantasy.add_player("Carmelo Anthony", ["SF", "PF", "F", "Utility"])
puts fantasy.start_player("Carmelo Anthony", "Utility")
puts fantasy.start_player("Dwyane Wade", "G")
puts fantasy.active_roster
puts fantasy.show_bench

puts fantasy.owner
puts fantasy.team_name
fantasy.owner = "Steve Ballmer"
puts fantasy.owner
puts fantasy.favorite_team




