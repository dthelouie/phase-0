# Your Names
# 1) Jordan Fox
# 2) David Louie

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_servings)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

    if menu.has_key?(item_to_make)
      serving_size = menu[item_to_make]
      remaining_ingredients = num_of_servings % serving_size
    else
      raise ArgumentError.new("#{item_to_make}? That's not on our menu!")
    end

  
  
  if remaining_ingredients >= 7
    return "Calculations complete: Make #{num_of_servings / serving_size} of #{item_to_make}, you can make #{(remaining_ingredients / menu["pie"]).to_s} pie, #{(remaining_ingredients / menu["cake"]).to_s} cake or #{(remaining_ingredients / menu["cookie"]).to_s} cookies."
  elsif remaining_ingredients >= 5
    return "Calculations complete: Make #{num_of_servings / serving_size} of #{item_to_make}, you can make #{(remaining_ingredients / menu["cake"]).to_s} cake or  #{(remaining_ingredients / menu["cookie"]).to_s} cookies."
  elsif remaining_ingredients >= 1
    return "Calculations complete: Make #{num_of_servings / serving_size} of #{item_to_make}, you can make #{(remaining_ingredients / menu["cookie"]).to_s} cookies."
  else
    return "Calculations complete: Make #{num_of_servings / serving_size} of #{item_to_make}"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# What did you learn about making code readable by working on this challenge?
# => Code needs to be readable so that others who read it can easily understand it
# => as well as the general flow of what's being written.
# Did you learn any new methods? What did you learn about them?
# => It wasn't new, but I got to use "has_key?" to check if the hash we're looking at
# => contains the key we're looking for.
# What did you learn about accessing data in hashes? 
# => You need to be able to access the key and the value if you want to take full
# => advantage of the data storage that hashes offer.
# What concepts were solidified when working through this challenge?
# => I definitely learned more about making sure my code is readable and easy to follow
# => so others who read it will be able to fully understand what's happening
# => rather than having to look at a bunch of generic or arbitrary variable names that seem
# => to have nothing to do with the actual code at work.