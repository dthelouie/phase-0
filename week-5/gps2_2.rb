# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)



# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
#      CREATE empty hash
#      SEPARATE input string at space delimeter into an array
#      SET array elements as keys in hash
#      SET hash value to 1
#      CALL print method to print to console
#      RETURN hash
# output: hash of items and quantity

# Method to add an item to a list
# input: item name and optional quantity and list
# steps:
#      CHECK if item key exists already in list
#      IF item exists, increment value in list by given quantity
#      IF item does not exist, add key, add given quantity to list
#      CONFIRM addition of new item
# output: 

# Method to remove an item from the list
# input: item name, list
# steps:
#      IF item exists, delete key/value pair
#      IF item does not exist, do nothing
#      CONFIRM removal of existing item
# output: 

# Method to update the quantity of an item
# input: item name, new quantity, list
# steps:
#      IF item key exists, hash at key equals given quantity
#      IF item doesn't exist, refer user to add method
# output:

# Method to print a list and make it look pretty
# input: list
# steps:
#      ITERATE over list
#      PRINT key: value
# output: list

def create_list(items)
  list = {}
  item_array = items.split(" ")
  item_array.each do |item|
    list[item] = 1
  end
  print_list(list)
end

def add_item(item, list, quantity = 1)
  if list.has_key?(item)
    list[item] += 1
  else
    list[item] = quantity
  end
end

def remove_item(item, list)
  if list.has_key?(item)
    list.delete(item)
  else
    puts "item does not exist"
  end
end

def update_quantity(item, list, quantity)
  if list.has_key?(item)
    list[item] = quantity
  else
    puts "item does not exist, please add item"
  end
end

def print_list(list)
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end
    

my_list = create_list("carrots apples cereal pizza") 

p my_list == {"carrots" => 1, "apples" => 1, "cereal" => 1, "pizza" => 1}
add_item("carrots", my_list, 1)
p my_list == {"carrots" => 2, "apples" => 1, "cereal" => 1, "pizza" => 1}
add_item("soda", my_list, 3)
p my_list == {"carrots" => 2, "apples" => 1, "cereal" => 1, "pizza" => 1, "soda" => 3}

remove_item("carrots", my_list)
p my_list == {"apples" => 1, "cereal" => 1, "pizza" => 1, "soda" => 3}
remove_item("batteries", my_list)
p my_list == {"apples" => 1, "cereal" => 1, "pizza" => 1, "soda" => 3}

update_quantity("apples", my_list, 3)
p my_list == {"apples" => 3, "cereal" => 1, "pizza" => 1, "soda" => 3}
update_quantity("carrots", my_list, 3)
p my_list == {"apples" => 3, "cereal" => 1, "pizza" => 1, "soda" => 3}