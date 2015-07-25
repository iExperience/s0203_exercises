def index_of(string, letter)
	index = 0
	string.each_char do |character|
		if character.downcase == letter.downcase
			return index
		else 
			index += 1
		end
	end
	return -1
end

puts index_of('turtle', 't')
puts index_of('', 'h')
puts index_of('zoomba', 'c')

def find_by_name(array_of_hashes, string)
	index = 0
	array_of_hashes.each do |hash|
		if hash.has_value?(string)
			return hash
		else
			index += 1
		end
	end
	return nil
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

p find_by_name(people, "ski")
# => {:id=>2,:name=>"ski"}
p find_by_name(people, "kitten!")

def filter_by_name(array_of_hashes, string)
	array = []
	array_of_hashes.each do |hash|
		if hash.has_value?(string)
			array << hash
		end
	end
	array
end

p filter_by_name(people, "ski")
# => [{:id=>2,:name=>"ski"}, {:id=>4,:name=>"ski"}]
p filter_by_name(people, "bru")
# => [{:id=>1,:name=>"bru"}] (Note this is still an array)
p filter_by_name(people, "puppy!!!")
# => []