def reverse array
new_array = []
	array.each do |fruit|
		new_array.unshift(fruit)
	end
new_array
end

fruits = ["apples", "bananas", "kiwis", "pears"]
puts reverse fruits