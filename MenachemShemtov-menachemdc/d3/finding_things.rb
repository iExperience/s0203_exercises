def index_of(string, letter)
	string.split("").each_with_index do |object, index|
		if object == letter
			return index
		end
	end
	-1
end

puts index_of("apple", "p")

def find_by_name(array, name)
	array.each do |person|
		if person[:name] == name
			return person
		end
	end
end

puts find_by_name(people, "Michael")

def filter_by_name(array, name)
	array_filtered []
	array.each do |person|
		if person[:name] == name
			array_filtered << person
		end
	end
	puts array_filtered
end

puts filter_by_name(people, "Michael")




people = [
	{
		:id => 1,
		:name => "Michael"
	},
	{
		:id => 2,
		:name => "Britt"
	},
	{
		:id => 3,
		:name => "Michael"
	},
	{
		:id => 4,
		:name => "Jack"
	},
	{
		:id => 5,
		:name => "Rachel"
	}
]ß