def reverse(fruits)
	new_array = []
	
    fruits.each_index do |index|
    	puts fruits[fruits.length - 1 - index]
	end
	new_array
end

fruits = ["apples", "bananas", "kiwis", "pears"]
puts reverse(fruits) 