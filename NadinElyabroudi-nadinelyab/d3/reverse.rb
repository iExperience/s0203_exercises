def reverse(array)
	reverse_array = []
	array.each do |elem|
		reverse_array.insert(0, elem)
	end
	reverse_array
end

fruits = ["apples", "bananas", "kiwis", "pears"]
puts reverse fruits