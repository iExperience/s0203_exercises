puts "Give me a starting year"
starting_year = gets.chomp.to_i

puts "Give me an ending year"
ending_year = gets.chomp.to_i

while starting_year <= ending_year
	if starting_year %4 == 0 && starting_year %100 != 0 || starting_year %400 == 0
		puts starting_year	
	end
	starting_year = starting_year + 1
end
