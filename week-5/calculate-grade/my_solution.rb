# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input?
# => an array of numbers
# What is the output? (i.e. What should the code return?)
# => a single letter as a grade
# What are the steps needed to solve the problem?
# => CALCULATE mean of numbers from array
# => SET ranges of letter grades
# => MATCH mean to ranges


#1. Initial Solution
def get_grade(grades)
  sum = 0
  idx = 0
  while idx < grades.length
    sum = sum + grades[idx]
    idx+=1
  end 
  mean = sum / grades.length
  if (90..100).include?(mean)
    return "A"
  elsif (80..89).include?(mean)
    return "B"
  elsif (70..79).include?(mean)
    return "C"
  elsif (60..69).include?(mean)
    return "D"
  elsif (0..59).include?(mean)
    return "F"
  end
end


# 3. Refactored Solution
def get_grade(grades)
  sum = 0
  grades.each do |grade|
    sum = sum + grade
  end 
  mean = sum / grades.length
  if mean >= 90
    return "A"
  elsif mean >= 80
    return "B"
  elsif mean >= 70
    return "C"
  elsif mean >= 60
    return "D"
  elsif mean < 60
    return "F"
  end
end



# 4. Reflection