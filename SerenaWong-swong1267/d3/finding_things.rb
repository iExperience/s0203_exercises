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


def find_by_name(array_of_hashes, string)
	array_of_hashes.each do |hash|
		if hash[:name].downcase == string.downcase
			return hash
		end
	end
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

find_by_name(people, "ski")

find_by_name(people, "kitten!")
# => nil
filter_by_name(people, "ski")
# => [{:id=>2,:name=>"ski"}, {:id=>4,:name=>"ski"}]
filter_by_name(people, "bru")
# => [{:id=>1,:name=>"bru"}] (Note this is still an array)
filter_by_name(people, "puppy!!!")
# => []