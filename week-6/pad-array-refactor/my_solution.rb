# Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# First Person's solution I liked
#    What I learned from this solution
#		I learned that I wrote way too much when I could have been
# 		writing a single line to accomplish the same thing.
# Copy solution here:
# def pad!(array, pad_size, value = nil)
#   array.fill(value, array.length...pad_size)
# end

# def pad(array, pad_size, value = nil)
#   return array + Array.new([0, pad_size-array.length].max, value)
# end




# Second Person's solution I liked
#    What I learned from this solution
# Copy solution here:




# My original solution:
# def pad!(array, min_size, value = nil) #destructive
#   if min_size < array.length
#   	return array
#   end
#   while min_size > array.length
#   	array.insert(-1, value)
#   end
#   return array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   if min_size < array.length
#   array3 = []
#   array.each do |i|
#   	array3.insert(-1, i)
#   end
#   	return array3
#   end
#   array2 = []
#   array.each do |i|
#   	array2.insert(-1, i)
#   end
#   while min_size > array2.length
#   	array2.insert(-1, value)
#   end
#   return array2
# end


# My refactored solution:
def pad!(array, min_size, value = nil)
	while array.length < min_size
		array.push(value)
	end
	return array
end

def pad(array, min_size, value = nil)
	arr = []
	array.each do |i|
		arr << i
	end
	while arr.length < min_size
		arr << value
	end
	return arr
end 


# 5. Reflection