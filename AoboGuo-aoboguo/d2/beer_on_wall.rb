initial_number_of_beers = 99

while initial_number_of_beers > 0

	if initial_number_of_beers == 1
		puts initial_number_of_beers.to_s + " bottle of beer on the wall, " + 
		initial_number_of_beers.to_s + " bottle of beer. Take one down, pass it around, " + 
		"no more bottles of beer on the wall."
		initial_number_of_beers = initial_number_of_beers - 1
	elsif initial_number_of_beers == 2
		puts initial_number_of_beers.to_s + " bottles of beer on the wall, " + 
		initial_number_of_beers.to_s + " bottles of beer. Take one down, pass it around, " + 
		(initial_number_of_beers - 1).to_s + " bottle of beer on the wall."
		initial_number_of_beers = initial_number_of_beers - 1	
	else puts initial_number_of_beers.to_s + " bottles of beer on the wall, " + 
		initial_number_of_beers.to_s + " bottles of beer. Take one down, pass it around, " +
		(initial_number_of_beers - 1).to_s + " bottles of beer on the wall."
		initial_number_of_beers = initial_number_of_beers - 1
	end 

end

puts "No more bottles of beer on the wall, no more bottles of beer. " + 
"Go to the store and buy some more, 99 bottles of beer on the wall."
