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



