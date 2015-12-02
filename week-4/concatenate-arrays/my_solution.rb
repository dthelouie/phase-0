# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
	if array_1.length == 0 && array_2.length == 0
		return []
	end
	i = 0
	while i < array_2.length
		array_1.push(array_2[i])
		i+=1
	end
  return array_1
end