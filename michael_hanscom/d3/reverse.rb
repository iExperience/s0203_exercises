def reverse array
	new_array = Array.new
	array.each do |value|
		new_array.unshift(value)
	end
	new_array
end

fruits = ["apples", "bananas", "kiwis", "pears"]
puts reverse fruits