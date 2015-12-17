# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(number)
    @cred_array = Array.new
    if number.to_s.size != 16
      raise ArgumentError
    else
      number.to_s.each_char do |digit|
        @cred_array.push(digit.to_i)
      end
    end
  end
    
    def check_card
      @cred_array.reverse_each do |digit|
        if @cred_array.index(digit).even?
          @cred_array.push(digit *2)
          @cred_array.delete_at(@cred_array.index(digit))
        end
      end
      @cred_array.each do |digit|
        if digit > 9
          digit.to_s.each_char do |split|
            @cred_array.push(split.to_i)
          end
          @cred_array.delete_at(@cred_array.index(digit))
        end
      end
      
      if @cred_array.reduce(:+) % 10 == 0
        return true
      else
        return false
      end
    end
end



# Refactored Solution
class CreditCard

  def initialize(number)
    @cred_array = Array.new
    if number.to_s.size != 16
      raise ArgumentError
    else
      number.to_s.each_char do |digit|
        @cred_array.push(digit.to_i)
      end
    end
  end
    
    def check_card
      count = 14
      while count >= 0
        @cred_array[count] *= 2
        count -= 2
      end
      @cred_array.each do |digit|
        if digit > 9
          digit.to_s.each_char do |split|
            @cred_array.push(split.to_i)
          end
          @cred_array.delete_at(@cred_array.index(digit))
        end
      end
      
      if @cred_array.reduce(:+) % 10 == 0
        return true
      else
        return false
      end
    end
end







# Reflection
# 1. What was the most difficult part of this challenge for you and your pair?
# => We had a lot of problems with targeting our elements when there were other elements of equal
# => value elsewhere in the array.  We originally used the method "index" so we could modify an element,
# => but in some cases we were modifying an element of the same value, but in a different position.
# => It led to a bunch of problems and we changed our targeting method.
# 2. What new methods did you find to help you when you refactored?
# => We didn't use new methods, as our refactoring mainly focused on making sure the code
# => worked for the right reasons.  While our code was working and returning as true, we found
# => that it was targeting the wrong elements in our array.  We fixed that in our refactoring.
# 3. What concepts or learnings were you able to solidify in this challenge?
# => We solidified our ability to evaluate and modify items within arrays, as well as adding
# => values to arrays and using the data stored within them.
