def reverse array
	new_array = []

	array.each_with_index do |element, index|
		new_array << array[(array.length - 1) - index]
	end
	return new_array
end

fruits = ["apples", "bananas", "kiwis", "pears"]
puts reverse fruits