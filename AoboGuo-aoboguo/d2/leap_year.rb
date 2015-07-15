puts "What would you like to set as your starting year?"
start_year = gets.to_i

puts "What would you like to set as your ending year?"
end_year = gets.to_i

while end_year - start_year >= 0
	if start_year%4 == 0 
		if start_year%400 == 0 
			puts start_year.to_s + " is a leap year."
			start_year = start_year + 1
		elsif start_year%100 == 0
			start_year = start_year + 1
		else
			puts start_year.to_s + " is a leap year."
			start_year = start_year + 1
		end
	else start_year = start_year + 1
end
end