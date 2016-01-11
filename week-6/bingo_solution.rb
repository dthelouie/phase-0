# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # CREATE set up random generator for ("b", "i", "n", "g", "o") and (1-100)
  # ASSIGN letter and number to variables
  # INTERPOLATE two strings to create called space

# Check the called column for the number called.
  # ASSIGN each letter to corresponding array

# If the number is in the column, replace with an 'x'
  # IF array include? number, get index key
  # ASSIGN indexed value to 'x'

# Display a column to the console
  # p index of column

# Display the board to the console (prettily)
  # ITERATE over each element in @bingo_board
  # p each nested array

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letter = ["B", "I", "N", "G", "O"].sample
    @number = rand(1..100)
    puts "Does anyone have #{@letter}#{@number}?"
    puts
  end

  def check
    if @letter == "B"
      column = @bingo_board[0]
    elsif @letter == "I"
      column = @bingo_board[1]
    elsif @letter == "N"
      column = @bingo_board[2]
    elsif @letter == "G"
      column = @bingo_board[3]
    elsif @letter == "O"
      column = @bingo_board[4]
    end

    i = 0
    while i < column.length
      if @number == column[i]
        column[i] = "X"
        puts "I have #{@letter}#{@number}!"
        p column
        puts
      else
        i += 1
      end
    end
  end

  def show_board
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end

end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @assign= {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
    @letter = @assign.keys.sample
    @number = rand(1..100)
    puts "Does anyone have #{@letter}#{@number}?"
    puts
  end

  def check
    column = @bingo_board[@assign[@letter]]

    if column.include?(@number)
      i = column.index(@number)
      column[i] = "X"
      puts "I have #{@letter}#{@number}!"
      p column
      puts
    end
  end

  def show_board
    @bingo_board.each do |column|
      p column
    end
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.show_board

#OPTIONAL
def legal_board
  b = (1..15).to_a
  i = (16..30).to_a
  n = (31..45).to_a
  g = (46..60).to_a
  o = (61..75).to_a
  board = [b.sample(5),
          i.sample(5),
          n.sample(5),
          g.sample(5),
          o.sample(5)]

  board.each do |column|
    p column
  end
end

legal_board


#Reflection
# 1. How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# => I didn't think it was very difficult, I think it helped in breaking each step into even
# => smaller steps so each process doesn't get mixed in with the flow of anohter.
# 2. What are the benefits of using a class for this challenge?
# => With a class, you're able to use instance variables across methods.  This was a huge
# => help because of the way we have to use information in each of our processes.
# => Without instance variables, we wouldn't have the number or letter being called, and we
# => wouldn't have access to the board's values.
# 3. How can you access coordinates in a nested array?
# => With nested arrays, you have to index multiple times, so it's clear which nested array, and
# => what element within that array you're trying to access.
# => You could also assign each of the nested arrays to variables, and then index those
# => variables individually.
# 4. What methods did you use to access and modify the array?
# => I used the method "include?" to check if the array contained the number that I was looking for
# => and "index" to give me the index number of the element that was equal to the number that was called.
# => I modified the element by reassigning the indexed position's value.
# 5. Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# => As I just mentioned, I used the method "index" for the first time.  When applied to an array,
# => you give it a value to look for, and if the value exists in the array.  If the value exists,
# => the method returns the element's index position.
# 6. How did you determine what should be an instance variable versus a local variable?
# => If I knew I was going to need a variable in another method, such as I did with @letter
# => and @number, I made it an instance variable.  If I knew I was only going to use the variable
# => locally, I left it as a local variable, like I did with column.
# 7. What do you feel is most improved in your refactored solution?
# => Deciding to put my letters into a hash that was assigned to numbers that would be used
# => for indexing was probably the biggest improvement in my refactoring.  It replaced the whole
# => if/elsif statement that I had in place to figure out which column I was looking at.