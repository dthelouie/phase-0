# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# => a list of labels
# Output:
# =>  a random element from the list of labels
# Steps:
# => INITIALIZE class with labels
# => RAISE argument error when no labels are passed
# => ASSIGN instance variables for labels and sides
# => RETURN number of sides for sides method
# => CREATE exception in roll method for a die of one side to return that side
# => ASSIGN variable for shuffled array of labels
# => RETURN a single variable in the shuffled array


# Initial Solution

class Die
  def initialize(labels)
  	if labels.length < 1
  		raise ArgumentError.new("A die cannot have 0 sides")
  	end
  	@labels = labels
  	@sides = labels.length
  end

  def sides
  	return @sides
  end

  def roll
  	if @sides == 1
  		return @labels[0]
  	end
  	random = @labels.shuffle
  	return random[0]
  end
end



# Refactored Solution

class Die
  def initialize(labels)
  	if labels.length < 1
  		raise ArgumentError.new("A die cannot have 0 sides")
  	end
  	@labels = labels
  	@sides = labels.length
  end

  def sides
  	return @sides
  end

  def roll
  	if @sides == 1
  		return @labels[0]
  	end
  	return @labels.sample
  end
end



# Reflection
# 1. What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# => In the original challenge, the only instance variable that was used was the number of sides,
# => but in this challenge there needed to be an instance variable for the labels that were
# => passed through the argument.  Other than that, the implementation was generally the same.
# 2. What does this exercise teach you about making code that is easily changeable or modifiable? 
# => Making code that is easily changeable is important because if some sort of new condition
# => rises, you need to be able to adapt your code to the condition with a simple solution.
# 3. What new methods did you learn when working on this challenge, if any?
# => I used the sample method, which returns a random element from within the array that it's applied to.
# 4. What concepts about classes were you able to solidify in this challenge?
# => Classes and their methods need to be able to address multiple situations. Originally,
# => our die was only able to return integers, but now because it can address multiple situations,
# => it can return other elements.