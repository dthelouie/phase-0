# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode



# Initial Solution

def is_fibonacci?(num)
	x = 1
	arr = [0]
	while x <= num
		arr << x
		arr2 = arr.last(2)
		x = arr2[0] + arr2[1]
		if x == num
			return true
		end
	end
	return false
end



# Refactored Solution
def is_fibonacci?(num)
	x = 1
	arr = [0]
	while x <= num
		arr << x
		x = arr[-1] + arr[-2]
		if x == num
			return true
		end
	end
	return false
end

# Reflection
# 1. What concepts did you review or learn in this challenge?
# => I reviewed iteration and array indexing to add the number until the given number was reached
# 2. What is still confusing to you about Ruby?
# => There's a lot of documentation to look through to find methods, and there are still
# => a lot of methods that I don't know off the top of my head.
# 3. What are you going to study to get more prepared for Phase 1
# => I'm going to work on learning more methods so I can use them quickly rather than
# => constantly combing through the Ruby Docs to find them.