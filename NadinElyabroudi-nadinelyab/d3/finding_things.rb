def index_of(string, letter)
	string = string.split("")
	string.each_with_index do |char, index|
		if(char == letter)
			return index
		end
	end
	-1
end

def find_by_name(array, name)
	array.each do |hash|
		if hash[:name] == name
			return hash
		end
	end
	nil
end

def filter_by_name(array, name)
	result = []
	array.each do |hash|
		if hash[:name] == name
			result.push(hash)
		end
	end
	result
end

puts index_of("abcdefghijklmnop", "m")
puts index_of("abcdefghijklmnop", "z")
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
puts find_by_name(people, "ski").inspect
puts find_by_name(people, "kitten!").inspect
puts filter_by_name(people, "ski").inspect
puts filter_by_name(people, "bru").inspect
puts filter_by_name(people, "puppy!!!").inspect