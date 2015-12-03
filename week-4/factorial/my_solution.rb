# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def factorial(number)
  # special case for 0!
  if number == 0
    return 1
 #special case for 1!
 	elsif number == 1
		return 1
  end
    #create variable to hold running total while we calculate factorial
  product = nil
  while number > 1
        #initialize product to equal number
    if product == nil
      product = number
    end
     #multiply total by next lower number
    product *= (number - 1)
     #reduce number by one and go back into while loop
    number -= 1
  end
  return product
end