# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  arr = source.select {|i| i.to_s.include?(thing_to_find)}
  return arr
end

def my_hash_finding_method(source, thing_to_find)
  arr = []
  source.each do |k, v|
    if v == thing_to_find
      arr << k
    end
  end
  return arr
end

# Identify and describe the Ruby method(s) you implemented.
#select: Declare an item that represents an object, and a block of code to apply to that item.  Objects that return true in that block will be returned.
#to_s: turn object into a string
#include?: checks to see if the object in question includes what is in the following parenthesis
#each do: declares each key and value as items and applies a block of code to them individually

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#select
#each/do
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#1. Identify and describe the Ruby method you implemented
# => #select: Declare an item that represents an object, and a block of code to apply to that item.  Objects that return true in that block will be returned.
# => to_s: turn object into a string
# => include?: checks to see if the object in question includes what is in the following parenthesis
# => each do: declares each key and value as items and applies a block of code to them individually
#2. Teach your accountability group how to use the methods
# => select's syntax is object.select{|item| block}
# => to_s: use this to turn an object such as an integer to a string. 15.to_s == "15"
# => include?'s syntax is object.include?(item)
# => each do's syntax with hashes is object.each do |key, value| and will iterate over each pair
#3. Share any tricks you used to find and decipher the Ruby Docs
# => I feel like the Ruby Docs are pretty clear about what goes where.
# => They name their variables clearly and give simple examples of what each method produces.