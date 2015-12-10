# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides or the methods, "side" or "roll"
# Output:
# => side: number of sides
# => roll: random number rolled
# Steps:
# set exception for sides < 1
# define instance variable for sides as @sides
# sides returns number of sides
# roll returns random number between 1 and number of sides


# 1. Initial Solution

class Die
  def initialize(sides)
  	if sides < 1
  		raise ArgumentError.new("A die cannot have 0 sides")
  	end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
  	nums = (1..@sides).to_a
  	nums.shuffle!
  	result = nums[0]
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
  	if sides < 1
  		raise ArgumentError.new("A die cannot have 0 sides")
  	end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
  	num = Random.new
    result = num.rand(1..@sides)
    return result
  end
end





# 4. Reflection

# What is an ArgumentError and why would you use one?
# => ArgumetErrors occur when there is a problem with the received argument in a method.
# => You would use them if your code only works with certain values.
# => In our case, our code only works with positive values.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# => I used shuffle to select a random number
# => to_a to turn a range of integers into a set of integers
# => Random.new to create a new random variable
# => I was trying to implement 1..@sides directly into an array or a string, but it wasn't working
# => until i used #to_a
# What is a Ruby class?
# => A Ruby Class is a type of object that you can apply methods to.
# Why would you use a Ruby class?
# => In this case, we wanted to make a die of variable sides, and roll it to get a random number.
# => Making a Ruby Class lets you make a new object that you can make new methods for.
# What is the difference between a local variable and an instance variable?
# => A local variable is only available within its own method, while an instance variable is 
# => visible across its class.  
# Where can an instance variable be used?
# => An instance variable can be used anywhere in the class including individual methods.