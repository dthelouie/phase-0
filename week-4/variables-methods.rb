
puts "What's your first name?"
first = gets.chomp
puts "Cool, what's your middle name?"
middle = gets.chomp
puts "Now what's your last name?"
last = gets.chomp
puts "Hello, #{first} #{middle} #{last}!  Nice to meet you!"

puts "What's your favorite number?"
num = gets.chomp.to_i
puts "I think that #{num + 1} is a bigger and better number!"

#1. How do you define a local variable?

# => A local variable can be defined simply by naming it and setting its value.
# => This value can be a number, a string, an array, or another function.

#2. How do you define a method?

# => A method is defined first by naming it, specifying the number of arguments
# => it should take, and the block of code that should run if the method is called upon.

#3. What is the difference between a local variable and a method?

# => A local variable is called upon to represent another value,
# => while methods are used so that you don't have to write the same block of code multiple times.
# => They often return some sort of a value after the method's command has been executed.

#4. How do you run a ruby program from the command line?

# => Run ruby file_name.rb in your command line

#5. How do you run an RSpec file from the command line?

# => Make sure that the relative file is defined in the RSpec file
# => and run ruby spec_file_name.rb in the command line

#6. What was confusing about this material? What made sense?

# => I didn't feel like anything was very confusing because most of these concepts were covered
# => in the material that we were given before we had our first interviews, but what made a
# => a lot of sense to me was the use of #{variable} within strings rather than using string concatenation
# => to use variables in the strings that we are printing into the console.  It seems quicker and more efficient.