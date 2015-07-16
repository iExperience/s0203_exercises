def index_of str, letter 
	array_chars = str.split('')
	array_chars.each_with_index do |char, index|
		if char == letter 
			return index;
		end	
	end	
	return -1
end	

def find_by_name arr_hash. name 
	arr_hash.each do |hash|
		if hash.has_value(name)
			new_hash = hash.select {|k,v| v == name}

		end	
	end	
end	

print "Type in a string: "
str = gets.chomp
print "Type in char: "
ch = gets.chomp 
puts index_of(str, ch)