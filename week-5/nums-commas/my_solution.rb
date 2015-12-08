# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
#convert to string
#how long is the string? how many commas should it have?
#make cases for 1 comma, 2 commas, and 3 commas
#insert comma every 3 digits from the right

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def separate_comma(int)
	str = int.to_s
	if str.length < 4
		return str
	elsif str.length > 9
		str = str[0..-10] + "," + str[-9..-7] + "," + str[-6..-4] + "," + str[-3..-1]
	elsif str.length > 6
		str = str[0..-7] + "," + str[-6..-4] + "," + str[-3..-1]
	elsif str.length > 3
		str = str[0..-4] + "," + str[-3..-1]
		return str
	end
end


# 2. Refactored Solution
def separate_comma(int)
	str = int.to_s
	if str.length < 4
		return str
	elsif str.length > 9
		str.insert(-10, ",")
		str.insert(-7, ",")
		str.insert(-4, ",")
	elsif str.length > 6
		str.insert(-7, ",")
		str.insert(-4, ",")
	elsif str.length > 3
		str.insert(-4, ",")
	end
end

# 3. Reflection
#What was your process for breaking the problem down? What different approaches did you consider?
# => I needed to figure out how long the number was and how many commas there were.
# => I considered loops and iteration but that seemed like it was too much work for something that could be accomplished with simpler processes.
# => Then I made if statements for each case.
#Was your pseudocode effective in helping you build a successful initial solution?
# => It was very effective, because I knew what my process needed to be and had it written in front of me.
#What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# => I used the method "insert" to put the commas in the correct places rather than using string concatenation.
# => When using the Ruby Docs, I looked to see if there was a method for the word I was thinking of (insert), and it happened to be there.
# => It didn't drastically change what I had written before, but it was much shorter and less confusing to write.
#How did you initially iterate through the data structure?
# => I had if statements that would take effect depending on the length of the number.
# => Whichever if statement applied would concatenate the numbers with a commma every 3 digits from the end.
#Do you feel your refactored solution is more readable than your initial solution? Why?
# => It was definitely more readable than my initial solution, because it wasn't using concatenation
# => and instead of looking at plus signs and string character ranges, I could look at a single
# => position within the string.