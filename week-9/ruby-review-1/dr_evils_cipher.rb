# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

#defining a method that takes one argument.
# def dr_evils_cipher(coded_message)
#   #downcase makes all characters lowercase, split creates an array of all individual characters
#   input = coded_message.downcase.split("") 
#   #Creating a new empty array
#   decoded_sentence = []
#   #The cipher is a hash that shifts all of the letters up by 4 
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#     #The hash shows all information clearly, but there's no index to refer to, and everything is hard-coded rather than variable.
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # What is #each doing here? #each is iterating through the input, which is the array that was created above. 
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? # This is assigned to false, because this will keep iterating until the condition is true.  At this point, there is a break in the loop.
#     cipher.each_key do |y| # What is #each_key doing here?
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? # For each letter in input, every key in the cipher is being checked for a match. If the letter in input matches the key in the cipher, we have found our new letter.
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here?
#         #stops current loop and moves to decode next character from input array
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         #replaces special characters with a space
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? #creates array of [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? # checks if found_match is true or false, runs following block if false.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning?
#   #joins decoded sentence into a single string
# end

# Your Refactored Solution
def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = decode(input).join("")
  return decoded_sentence
end

def decode(array)
  alphabet_array = ('a'..'z').to_a
  decoded = []
  array.each do |x|
    if alphabet_array.include?(x)
      number = alphabet_array.index(x) - 4
      decoded << alphabet_array[number]  
    elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
      decoded << " "
    elsif x.is_a? Numeric
      decoded << x
    else
      decoded << x
    end
  end
  return decoded
end


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!