# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# => an answer, and subesquent guesses
# Output:
# => high, low, correct, true or false
# Steps:
# => DECLARE instance variable for answer
# => DEFINE guess method
# => DECLARE instance variable for attempt
# => CREATE exception for attempt == nil
# => CREATE conditions for producing high, low, or correct
# => DEFINE solved? method
# => CREATE conditions for returning true or false


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(attempt)
  	@attempt = attempt
  	if attempt == nil
  		return false
  	elsif attempt < @answer
  		return :low
  	elsif attempt > @answer
  		return :high
  	elsif attempt == @answer
  		return :correct
  	end
  end

  def solved?
  	if guess(@attempt) != :correct
  		return false
  	elsif guess(@attempt) == :correct
  		return true
  	end
  end
end




# Refactored Solution
class GuessingGame
	def initialize(answer)
		@answer = answer
		@solved = false
	end

	def guess(attempt)
		@attempt = attempt
  		if attempt == nil
  			@solved = false
  		elsif attempt < @answer
  			@solved = false
  			return :low
  		elsif attempt > @answer
  			@solved = false
  			return :high
  		elsif attempt == @answer
  			@solved = true
  			return :correct
		end
	end

	def solved?
		return @solved
	end
end




# Reflection
# 1. How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# => Instance variables and methods dictate the way an object behaves when they are applied to it.
# => Just as we could find that our guess is right or wrong by asking someone, we can do here in our code.
# 2. When should you use instance variables? What do they do for you?
# => Instance variables should be used when we will need data across different methods of a class.
# => They allow us to see the data stored on them from other methods, and allows us to manipulate
# => and use that data for other purposes.
# 3. Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# => Flow control is important for readability of your code, and the way that different elements react to each other.
# => I had an issue with flow control, as @solved was being returned as nil when it was supposed to be false.
# => That's when I realized that I had to declare @solved as false in the initialization of GuessingGame
# 4. Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# => This code requires symbols because they are immutable and not subject to change while the program is running.
# => Instance variables can have their values changed, but symbols cannot.