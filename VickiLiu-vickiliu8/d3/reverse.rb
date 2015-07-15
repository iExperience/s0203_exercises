def reverse array
	result = Array.new(array.length)
	index = 0
	while index < array.length
		result[-1 - index] = array[index]
		index += 1
	end
	result
end

puts reverse([1, 2, 3, 4, 5, 6, 7])
puts reverse([7, 6, 5, 4, 3, 2, 1])
puts reverse(["apples", "bananas", "kiwis", "pears"])