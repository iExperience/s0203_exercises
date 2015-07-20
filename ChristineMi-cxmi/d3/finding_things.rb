# def index_of(string, letter)
# 	index_number = 0
# 	while index_number < string.length
# 		if string[index_number] == letter
# 			return index_number
# 		else
# 			index_number = index_number + 1
# 			if index_number == string.length
# 				return -1
# 			end
# 		end
# 	end


# end

# puts index_of("abcdefghijklm", "m")



def find_by_name(array_of_hashes, string)
	array_of_hashes.each do |profile|
		profile.each do |id_number, string_name|
		if string == string_name
			return profile
		else 
			return nil
		end
	end
	end

end

people = [
  {
    :id => 1,
    :name => "bru"
  },
  {
    :id => 2,
    :name => "ski"
  },
  {
    :id => 3,
    :name => "brunette"
  },
  {
    :id => 4,
    :name => "ski"
  }
]

puts find_by_name(people, "ski")

puts find_by_name(people, "kitten!")


# def filter_by_name

# end
