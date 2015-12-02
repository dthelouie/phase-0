def largest_integer(arr)
	if arr.length == 0
		return nil
	elsif arr.length == 1
		return arr[0]
	end
	i = 1
	num = arr[0]
	while i < arr.length
		if num < arr[i]
			num = arr[i]
		end
		i += 1
	end
	return num
end