# Analyze the Errors

# I worked on this challenge by myself
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase
#cartmans_phrase = "Screw you guys " "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => Syntax
# 4. What additional information does the interpreter provide about this type of error?
# => "unexpected end-of-input, expecting keyword_end"
# 5. Where is the error in the code?
# => There is an end marker for the defining of the method, but there's no end marker for the while loop.
# => The indentation suggests that the end is ending the method definition, but it is ending the while loop
# => and the definition is looking for an end marker.
# 6. Why did the interpreter give you this error?
# => The definition is looking for its end, and it doesn't exist.
# => Without its end, the method cannot perform correctly.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => 39
# 2. What is the type of error message?
# => "NameEror"
# 3. What additional information does the interpreter provide about this type of error?
# => "undefined local variable or method 'south_park'"
# 4. Where is the error in the code?
# => The end of line 39, because there's nothing following the variable name.
# 5. Why did the interpreter give you this error?
# => This variable isn't assigned to anything.
# => It could be assigned to a method or a variable but since it's not
# => assigned to anything, it's creating an error.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => 56
# 2. What is the type of error message?
# => "NoMethodError"
# 3. What additional information does the interpreter provide about this type of error?
# => "undefined method"
# 4. Where is the error in the code?
# => This is calling a method that hasn't been defined.
# 5. Why did the interpreter give you this error?
# => The method that is listed here doesn't exist, hence the "NoMethodError".

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 71
# 2. What is the type of error message?
# => "ArgumentError"
# 3. What additional information does the interpreter provide about this type of error?
# => "wrong number of arguments (1 for 0)"
# 4. Where is the error in the code?
# => There shouldn't be anything inside the parenthesis
# 5. Why did the interpreter give you this error?
# => The method is being called with an argument, but it's not meant to be taken with any arguments
# => so it's telling us that we have the wrong number of arguments.
# => We have 1 argument, but 0 were expected.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => 92
# 2. What is the type of error message?
# => "ArgumentError"
# 3. What additional information does the interpreter provide about this type of error?
# => "wrong number of arguments (0 for 1)"
# 4. Where is the error in the code?
# => After the method is called, there's nothing following it
# 5. Why did the interpreter give you this error?
# => There is supposed to be an argument following the call of the method,
# => but there are none so we get an argument error.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 144
# 2. What is the type of error message?
# => "ArgumentError"
# 3. What additional information does the interpreter provide about this type of error?
# => "wrong number of arguments (1 for 2)"
# 4. Where is the error in the code?
# => Within the parenthesis
# 5. Why did the interpreter give you this error?
# => Inside the parenthesis, there is only one argument rather than two.
# => The method expects two arguments, so we get an error.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 134
# 2. What is the type of error message?
# => "TypeError"
# 3. What additional information does the interpreter provide about this type of error?
# => "String can't be coerced into Fixnum"
# 4. Where is the error in the code?
# => The string should be an integer
# 5. Why did the interpreter give you this error?
# => Integers can only be multiplied by integers, not strings.
# => Strings cannot be multiplied.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 150
# 2. What is the type of error message?
# => "ZeroDivisionError"
# 3. What additional information does the interpreter provide about this type of error?
# => "divided by 0"
# 4. Where is the error in the code?
# => The 0 at the end of the line
# 5. Why did the interpreter give you this error?
# => Any number divided by 0 is an undefined number.
# => It cannot be expressed, so we get an error.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 167
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => "cannot load such file --"
# 4. Where is the error in the code?
# => The name of the file
# 5. Why did the interpreter give you this error?
# => There is no file named "cartmans_essay.md" in the current directory
# => so the file cannot load.


# --- REFLECTION -------------------------------------------------------
#1. Which error was the most difficult to read?

# => I found the first error most difficult to read.
# => I saw the ending tag there, but I saw that it was in line with the "def"
# => it took me a while before I realized that there was no ending tag for the loop.

#2. How did you figure out what the issue with the error was?

# => I looked at the code and realized that the ending tag was in line
# => with the "def", but it was really closing the loop and leaving the definition open.

#3. Were you able to determine why each error message happened based on the code? 

# => Yes, the error messages made everything very clear and I knew what to look for each time.

#4. When you encounter errors in your future code, what process will you follow to help you debug?
	
# => I will definitely be looking for at the error messages, but I would also like to learn
# => how to use irb to debug and go through my code line by line to see what is actually
# => working in the code and where that stops.