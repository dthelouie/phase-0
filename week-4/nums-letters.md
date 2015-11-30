#Numbers and Letters Summary

###1. What does "puts" do?
	
	The command "puts" prints the corresponding output and "nil" with a new line.  

###2. What is an integer?  What is a float?

	An integer is a whole number, and a float is a number that includes a decimal point.

###3. What is the difference between float and integer division?  How would you explain the difference to someone who doesn't know anything about programming?

	Division with floats will give you exact numbers decimals, while division with integers will give you only the quotient and will disregard the remainder.  

```ruby

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

```