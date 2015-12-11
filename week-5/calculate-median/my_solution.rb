# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input?
# => an array of numbers
# What is the output? (i.e. What should the code return?)
# => the median of the set. if there is no median, return 0.0
# What are the steps needed to solve the problem?
# => SORT array
# => GET length of array
# => FIND middle number
# => IF there is no median, return 0.0


# 1. Initial Solution
def median(numbers)
	range = numbers.sort!
	length = range.length
	if length % 2 == 1
		middle = length/2
	elsif length % 2 == 0
		middle = (range[(length/2) - 1].to_f + range[(length/2)].to_f)/2.0
		return middle
	end
	return range[middle]
end


# 3. Refactored Solution
def median(numbers)
	range = numbers.sort!
	length = range.length
	if length % 2 == 1
		middle = length/2
	elsif length % 2 == 0
		middle = range.values_at((length/2) - 1, length/2)
		median = (middle[0].to_f + middle[1].to_f)/2
		return median
	end
	return range[middle]
end


# 4. Reflection