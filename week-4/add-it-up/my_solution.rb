# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
#set variable equal to 0
#iterate over numbers and add to variable
#return total

# Input: total([10, 5, 2, 1])
# Output: 18
# Steps to solve the problem.


# 1. total initial solution

def total(arr)
  x = 0
  sum = 0
 while x < arr.length
    sum += arr[x]
    x += 1
  end
  return sum
end
# 3. total refactored solution
def total(arr)
	sum = 0
	arr.each do |i|
		sum = sum + i
	end
	return sum
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
#define sentence_maker(arr)
#create empty string
#iterate over elements in array
#convert all elements to string
#add elements to string except first and last objects
#make new string with first object, first string, and last object
#return new string
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution
def sentence_maker(arr)
  string = ""
  i = 1
  while i < arr.length-1
    string += arr[i].to_s + ' '
    i+=1
  end
  sentence = arr[0].capitalize! + " " + string + arr[-1] + "."
    return sentence
end


# 6. sentence_maker refactored solution
def sentence_maker(arr)
  string = ""
  arr.each do |i|
    string += i.to_s + ' '
  end
  string[-1] = "."
  return string = string.capitalize
end
