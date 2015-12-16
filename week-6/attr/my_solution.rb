#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: none
# Output: a greeting to the name declared in NameData
# Steps:
# ASSIGN att_reader to :name
# DECLARE instance variable as a name
# INITIALIZE greetings
# RETRIEVE name data
# DEFINE hello method to greet the name from NameData



class NameData
	attr_reader :name
	def initialize
		@name = "David"
	end
end


class Greetings
	def initialize
		access = NameData.new
		@name = access.name
	end

	def hello
		print "Hello, #{@name}! How are you doing today?"
	end
end

greet = Greetings.new
greet.hello


# Reflection
# Release 1
# 1. What are these methods doing?
# => The methods are letting the user change the values of instance variables by passing
# => them through the argument.
# How are they modifying or returning the value of instance variables?
# => The methods that are changing the instance variables set their instance variables
# => equal to the most recent argument

# Release 2
# 1. What changed between the last release and this release?
# => An att_reader for :age was added, and the method for what_is_age was removed.
# 2. What was replaced?
# => The method what_is_age was no longer needed because we have an attribute reader with :age now.
# => :age is able to be used to read the data of the instance variable.
# 3. Is this code simpler than the last?
# => This code is definitely simpler, because by adding a simple attribute reader we can eliminate
# => a whole block of code that serves the same function.

# Release 3
# 1. What changed between the last release and this release?
# => An attr_writer was added for :age, and the method for change_my_age was removed.
# 2. What was replaced?
# => The function that was served by change_my_age was replaced by what can be done
# => with the attr_writer for :age
# 3. Is this code simpler than the last?
# => Again, this is simpler because a whole block of code was able to be replaced because
# => of what can be done with something smaller.  In this case, that is an attribute writer.

# Release 6
# 1. What is a reader method?
# => A reader method reads the data stored in a variable
# 2. What is a writer method?
# => A writer method writes new data to a variable
# 3. What do the attr methods do for you?
# => attr methods let us access instance variables, even when we're outside of the method or class.
# 4. Should you always use an accessor to cover your bases? Why or why not?
# => Using accessors might be nice in the case of covering your bases, but you might only want
# => to read the variable without giving write permissions, or do the opposite.
# 5. What is confusing to you about these methods?
# => The most confusing thing to me was actually accessing the instance variable from another class.
# => I thought that since it was declared in the original class that I had accessed it,
# => but I had neglected to explicitly call the variable.