# def index_of(string, letter)
# 	if string.length > 0 
# 		index_number = 0
# 		while index_number < string.length 
# 			if string[index_number] == letter
# 				return index_number
# 			else
# 				index_number = index_number + 1
# 				if index_number == string.length
# 					return -1
# 				end
# 			end
# 		end
# 	else
# 		return -1 
# 	end
# end

# puts index_of("alskd23412343", "k")
# puts index_of("abcdefghijklmnop", "z")

def find_by_name(array_of_hashes, string_for_name)
	there_is_name = false
	array_of_hashes.each do |profile|
		profile.each do |id_number, person_name|
			if person_name == string_for_name
				there_is_name = true
				return profile
			end
		end
	end
	if there_is_name == false
		return nil
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

# def filter_by_name(array_of_hashes, string_for_name)
# 	there_is_name = false
# 	people_with_name = []
# 	array_of_hashes.each do |profile|
# 		profile.each do |id_number, person_name|
# 			if person_name == string_for_name
# 				people_with_name << profile
# 			end
# 		end
# 	end
# 	return people_with_name
# end

# print filter_by_name(people, "ski")
# print filter_by_name(people, "bru")
# print filter_by_name(people, "puppy!!!")
