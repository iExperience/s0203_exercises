def reverse array
	length_of_array = array.length
	while length_of_array > 0
		fruit = array[-1].to_s
		to_remove = array.last
		array.delete(array.last)
		length_of_array = array.length
		puts fruit
	end
end

fruits = ["apples", "bananas", "kiwis", "pears"]
puts reverse fruits 