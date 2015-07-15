def index_of(string, letter)
	counter = 0

	string.each_char do |char|
		if counter + 1 == string.length
			puts -1
			break
		elsif char == letter
			puts counter
			break
		else
		end
		counter += 1
	end
end

puts index_of("abcdefghijklmnop", "m")
puts index_of("abcdefghijklmnop", "z")

def find_by_name
	
end

def filter_by_name
	
end