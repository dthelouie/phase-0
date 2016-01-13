# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# Define the method 
# assign special cases for 0-19
# assign special cases for multiples of 10
# assign special cases for 1000s, 100000s, 1000000s etc.
# convert each digit into a string, keeping in ine with the special cases
# concat strings
# return single string


# Initial Solution


  


def in_words(num)
  
  spec = {
    "0" => "",
    "1" => "one",
    "2" => "two",
    "3" => "three",
    "4" => "four",
    "5" => "five",
    "6" => "six",
    "7" => "seven",
    "8" => "eight",
    "9" => "nine",
    "10" => "ten",
    "11" =>"eleven",
    "12" => "twelve",
    "13" => "thirteen",
    "14" => "fourteen",
    "15" => "fifteen",
    "16" => "sixteen",
    "17" => "seventeen",
    "18" => "eighteen",
    "19" => "nineteen",
    }
  
tens = {
    "2" => "twenty",
    "3" => "thrity",
    "4" => "forty",
    "5" => "fifty",
    "6" => "sixty",
    "7" => "seventy",
    "8" => "eighty",
    "9" => "ninety",
    }
  
  if num == 0
    return "zero"
  end
  if num < 19
    spec.each_key do |x|
      if x == num.to_s
        return spec[x]
      end
    end
  end
  str = num.to_s
  if str.length == 2 && num > 19
    word = tens[str[0]]+ " " + spec[str[1]]
  elsif str.length == 3
    if spec.include?(str[1..2])
      word = spec[str[0]] + " hundred " + spec[str[1..2]]
    else
    word = spec[str[0]] + " hundred " + tens[str[1]] + " " + spec[str[2]]
    end
  elsif str.length == 4
    if spec.include?(str[2..3])
      word = spec[str[0]] + " thousand " + spec[str[1]] + " hundred " + spec[str[2..3]]
    else
    word = spec[str[0]] + " thousand " + spec[str[1]] + " hundred " + tens[str[2]] + " " + spec[str[3]]
    end
  end
  return word
end


puts in_words(24)
puts in_words(115)
puts in_words(3112)
# Refactored Solution


def in_words(num)
  
  spec = {
    "0" => "",
    "1" => "one",
    "2" => "two",
    "3" => "three",
    "4" => "four",
    "5" => "five",
    "6" => "six",
    "7" => "seven",
    "8" => "eight",
    "9" => "nine",
    "10" => "ten",
    "11" =>"eleven",
    "12" => "twelve",
    "13" => "thirteen",
    "14" => "fourteen",
    "15" => "fifteen",
    "16" => "sixteen",
    "17" => "seventeen",
    "18" => "eighteen",
    "19" => "nineteen",
    }
  
tens = {
    "2" => "twenty",
    "3" => "thrity",
    "4" => "forty",
    "5" => "fifty",
    "6" => "sixty",
    "7" => "seventy",
    "8" => "eighty",
    "9" => "ninety",
    }
  
  if num == 0
    return "zero"
  end
  if num < 19
    spec.each_key do |x|
      if x == num.to_s
        return spec[x]
      end
    end
  end
  str = num.to_s
  if str.length == 2 && num > 19
    word = tens[str[0]]+ " " + spec[str[1]]
  elsif str.length == 3
    if spec.include?(str[1..2])
      word = spec[str[0]] + " hundred " + spec[str[1..2]]
    else
    word = spec[str[0]] + " hundred " + tens[str[1]] + " " + spec[str[2]]
    end
  elsif str.length == 4
    if spec.include?(str[2..3])
      word = spec[str[0]] + " thousand " + spec[str[1]] + " hundred " + spec[str[2..3]]
    else
    word = spec[str[0]] + " thousand " + spec[str[1]] + " hundred " + tens[str[2]] + " " + spec[str[3]]
    end
  end
  return word
end

# Reflection