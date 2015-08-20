def index_of(string, letter)
	curr_index = 0
	while curr_index < string.length
		if string[curr_index].downcase == letter.downcase
			return curr_index
		end
		curr_index += 1
	end
	return -1
end

index_of("abcdefghijklmnop", "m")
# => 12
index_of("abcdefghijklmnop", "z")
# => -1


def find_by_name(array_of_hashes, string)
	array_of_hashes.each do |hash|
		if hash[:name].downcase == string.downcase
			return hash
		end
	end
	return nil
end

def filter_by_name(array_of_hashes, string)
	return_array = []
	array_of_hashes.each do |hash|
		if hash[:name].downcase == string.downcase
			return_array << hash
		end
	end
	return_array
end
