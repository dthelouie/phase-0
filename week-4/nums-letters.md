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

#Reflection:
###1. How does Ruby handle addition, subtraction, multiplication, and division of numbers?

	Ruby can do handle basic math functions whether they're assigned to a variable or in a printing command.  Math functions can also be used within methods.  

###2. What is the difference between integers and floats?

	Integers are whole numbers, while floats include decimals.

###3. What is the difference between integer and float division?

	The main difference between the two is that when floats are divided, the number that they will return will include decimals to give you an exact number.  Integers react by giving a quotient, but without a remainder or a decimal.  If you want to know the remainder of a quotient, you would use a modulus.

###4. What are strings? Why and when would you use them?

	Strings are letters or numbers that are used for receiving input and giving output.  They are housed in quotes to differenciate themselves from variables and integers.  

###5. What are local variables? Why and when would you use them?

	A local variable is an item that can be assigned as a string, an integer, a math function, or even another variable.  They can be used to condense larger functions or elements into smaller, more manageable packages.  

###6. How was this challenge? Did you get a good review of some of the basics?

	I enjoyed this challenge, as I got to go over a lot of Ruby concepts that I haven't used since my initial interview for Dev Bootcamp.  Now that it's becoming more fresh in my mind, I'm ready to apply it to the next challenges.