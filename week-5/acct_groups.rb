#get list of names
#figure out how many groups there should be
#divide people into groups
#make sure there are at least 3 in each group

def acct_groups(arr)
	arr.shuffle!
	a = 5
	b = arr.length/a
	if (arr.length % 5) < 3 && (arr.length % 5) > 0
		a = 4
	end
	acct_groups = Array.new((b) + 1) {Array.new(0)}
	i = 0 
	#index of people to assign
	n = 0
	#index of group
	while i < arr.length
		acct_groups[n] << arr[i]
		i += 1
		if acct_groups[n].length == a
			n += 1
		end
	end
	j = 1
	k = 0
	while j < acct_groups.length + 1
	puts "Accountability Group #{j}:" 
	puts acct_groups[k]
	j += 1
	k += 1
	end
end

list_of_names = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p"]
acct_groups(list_of_names)

# What was the most interesting and most difficult part of this challenge?
# => The most interesting part of this challenge was figuring out how to separate the groups.
# => This was also the most difficult part because it took me a while to figure out how to create
# => multi-dimensional arrays.
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# => Yes, my pseudocode is giving me a better idea of what I have to do and
# => what steps I need to take to get things done.
# Was your approach for automating this task a good solution? What could have made it even better?
# => I wanted to randomize the list and put the names into separate arrays.
# => If I were better at finding things in the Ruby Docs, other methods probably would have made it better.
# What data structure did you decide to store the accountability groups in and why?
# => I decided to put the groups into a multi-dimensional array.  Each accountability group is housed
# => in individual arrays that are nested in another arrays.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# => After combing through the Ruby Docs, I didn't find anything that I wanted to use
# => that made me feel like I could make this solution any better. I learned how to use
# => Array.new, and shuffle in my original solution.