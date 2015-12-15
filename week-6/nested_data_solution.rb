# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================

p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# Pseudocode:
# Go through each item in the array of numbers
# Check to make sure it is an array
# If an array is found, we will run a .each loop
# Inside this .each loop we will add 5 to each element of the array
# if the element is not an array we will add 5

# number_array.each do |i|
#   if i == Array
#     i.each do |nested|
#       nested += 5
#     end
#   else
#       i += 5
#   end
# end

for element in (0...number_array.length) do
  if number_array[element].kind_of?(Array)
    for inner_number in (0...number_array[element].length) do
      number_array[element][inner_number] += 5
    end
  else
    number_array[element] += 5
  end
end

#Refactored Solution
number_array.map! do |i|
  if i.kind_of?(Array)
    i.map! do |nest|
      nest += 5
    end
    else
      i += 5
  end
end

print number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# Pseudocode:
# Go through each item in startup_names array
# Check if each item is an array
# If element is an array, run a string concatanation adding -ly to the nested elements
# If element is not array we will add -ly to the name of this element 

#FIRST ATTEMPT

# for element in (0...startup_names.length) do
#   if startup_names[element].kind_of?(Array)
#     for outer_name in (0...startup_names[element].length) do
#       if startup_names[outer_name].kind_of?(Array)
#         for inner_name in (0...startup_names[element][outer_name].length) do
#           startup_names[element][outer_name][inner_name].concat("ly")
#             end
#       else 
#         startup_names[element][outer_name].concat("ly")
        
#         end
#       end
#     else startup_names[element].concat("ly")
#    end
#   end





#Refactored Solution
startup_names.map! do |lvl_1|
  if lvl_1.kind_of?(Array)
    lvl_1.map! do |lvl_2|
      if lvl_2.kind_of?(Array)
        lvl_2.map! do |lvl_3|
          lvl_3.concat("ly")
        end
      else
          lvl_2.concat("ly")
      end
    end
  else lvl_1.concat("ly")
  end
end
    
p startup_names


#Reflection
# What are some general rules you can apply to nested arrays?
# => First of all, each array that's nested in another one will be treated as any
# => other element would be treated.  If iterated over, it will use the whole nested array
# => rather than individual elements inside the nested array.
# What are some ways you can iterate over nested arrays?
# => You can iterate over nested arrays with if statements to check if the nested element is an array,
# => and then nest an interation method within that if statement.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# => We used the methods "kind_of?" and "concat" to detect the type of element that we were
# => looking at, and the to add "ly" to the end of the targeted strings.


