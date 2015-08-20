def index_of(string, letter)
	string.split("").each_with_index do |character, index|
		if character == letter
			return index
		end
	end
	-1
end


def find_by_name(people_array, string)
	people_array.each do |person|
		if person[:name] == string
			return person
		end
	end
	return nil
end


def filter_by_name(people_array, string)
	result = Array.new
	people_array.each do |person|
		if person[:name] == string
			result << person
		end
	end
	result
end

index_of("abcdefghijklmnop", "m")
# => 12
index_of("abcdefghijklmnop", "z")
# => -1

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
# => {:id=>2,:name=>"ski"}
find_by_name(people, "kitten!")
# => nil
filter_by_name(people, "ski")
# => [{:id=>2,:name=>"ski"}, {:id=>4,:name=>"ski"}]
filter_by_name(people, "bru")
# => [{:id=>1,:name=>"bru"}] (Note this is still an array)
filter_by_name(people, "puppy!!!")
# => []
