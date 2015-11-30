def hours_in_years(years)
	hours_in_day = 24
	days_in_year = 365
	answer = (years * days_in_year * hours_in_day)
	puts "There are #{answer} hours in #{years} years"
end

hours_in_years(1)

def mins_in_decades(decades)
	mins_in_hour = 60
	hours_in_day = 24
	days_in_year = 365
	years_in_decade = 10
	answer = (mins_in_hour * hours_in_day * days_in_year * years_in_decade * decades)
	puts "There are #{answer} minutes in #{decades} decades"
end

mins_in_decades(1)