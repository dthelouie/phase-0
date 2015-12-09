# Calculate the mode Pairing Challenge

# I worked on this challenge Devin Mandelbaum
# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? 
# an array of numbers

# What is the output? (i.e. What should the code return?)
# an array of the element that shows up the most in the given array

# What are the steps needed to solve the problem?
# start a new hash
# iterate over the array
#   insert values of array into keys for hash with values = 1
#   IF array value == existing hash key, hash value + 1
# use select and max to take key-value pairs with maximum values 
# hash.each do |k, v|
# arr << k


# 1. Initial Solution
def mode(array)
  hash = {}
  array.each do |x|
    if hash == {} || hash.has_key?(x) == false
      hash[x] = 1
      elsif hash.has_key?(x)
      hash[x] += 1
    end
  end
  var = hash.max_by {|k,v| v}
  fred = var[1]
  hash.delete_if{|k, v| v != fred}
  arr = []
  hash.each do |k, v|
    arr << k
  end
  return arr
end


# 3. Refactored Solution
def mode(array)
  hash = {}
  array.each do |x|
    if hash == {} || hash.has_key?(x) == false
      hash[x] = 1
      elsif hash.has_key?(x)
      hash[x] += 1
    end
  end
  var = hash.max_by {|k,v| v}
  hash.delete_if{|k, v| v != var[1]}
  return hash.keys
end



# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# => We decided to use a hash to store our information because we could have the object as the key,
# => and an integer for the amount of times it showed up.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# => The pseudocode this time was a lot more straightforward and descriptive than
# What issues/successes did you run into when translating your pseudocode to code?
# => We had to rewrite our pseudocode after trying to store our information in arrays,
# => but we got it to work after moving to hashes.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# => We used each to iterate through our content, but we also used delete_if to remove irrelevant information.
