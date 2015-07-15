def reverse array
  length_array = array.length
  new_array = []
  index = length_array
  while index >= 0
  	new_array.push(array[index])
  	index -= 1
  end	
  puts new_array.length
  new_array
end

fruits = ["apples", "bananas", "kiwis", "pears"]
puts reverse fruits