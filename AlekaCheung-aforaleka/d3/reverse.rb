def reverse array
	new_array = Array.new
	while !array.empty?
		new_array << array.pop
	end
	new_array
end

fruits = ["apples", "bananas", "kiwis", "pears"]
puts reverse fruits