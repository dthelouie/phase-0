#Pad an Array

# I worked on this challenge with Lucas Nagle

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# An array, A number, and an object
# What is the output? (i.e. What should the code return?)
# The array with the number of objects. The total number of items in the array should be the number of the 2nd parameter. If third parameter, anything added to the array should be that. Otherwise, if there is not a third parameter, anything added to the array should be nil.
# What are the steps needed to solve the problem?
# If the arrays number of indices is less than or equal to the number given, return array as is.
# If third parameter isn't given, set default to nothing.
# If third parameter, set it to that.
# Return array with number of elements in original array permantently if it's a destructive method
# Return array with number of elements in original array into a new array or temporarily in the original array if it's a non-destructive method

# # 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size < array.length
  	return array
  end
  while min_size > array.length
  	array.push(value)
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  if min_size < array.length
  array3 = []
  array.each do |i|
  	array3 << i
  end
  	return array3
  end
  array2 = []
  	array.each do |i|
  	array2 << i
  end
  while min_size > array2.length
  	array2.push(value)
  end
  return array2
end

#pad([1,2,3], 0)

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size < array.length
  	return array
  end
  while min_size > array.length
  	array.insert(-1, value)
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  if min_size < array.length
  array3 = []
  array.each do |i|
  	array3.insert(-1, i)
  end
  	return array3
  end
  array2 = []
  array.each do |i|
  	array2.insert(-1, i)
  end
  while min_size > array2.length
  	array2.insert(-1, value)
  end
  return array2
end


# Were you successful in breaking the problem down into small steps?
# => Yes, we were able to divide our solution into multiple steps to account for
# => the exceptions to what we were going to be writing.
# Once you had written your pseudocode, were you able to easily translate it into code?
# What difficulties and successes did you have?
# => Our pseudocode helped us figure out what steps to take in what order, so it made everything much easier.
# => It mapped everything out for us clearly, and we just had to figure out what methods to use.
# Was your initial solution successful at passing the tests? If so, why do you think that is?
# If not, what were the errors you encountered and what did you do to resolve them?
# => Our initial solution passed the tests because we had accounted for the given exceptions,
# => as well as the different cases that were given to us by the problem.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# => We used insert rather than the shovel, or push, but we came up with the same result.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# => I think our solution is readable because it takes each case one at a time.
# => We used variable names that say what type of object we're looking at.
# What is the difference between destructive and non-destructive methods in your own words?
# => Destructive methods replace the given object, while non-destructive methods create
# => new objects to show new information.