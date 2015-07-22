puts "Please give a starting year:"
start_year = gets.strip
start_year = start_year.to_i
puts "Please give an ending year:"
ending_year = gets.strip
ending_year = ending_year.to_i

puts "Ok, the leap years between " + start_year.to_s + " and " + ending_year.to_s + " are:"

while(start_year <= ending_year)
	if(start_year % 4 == 0)
		if (start_year % 100 != 0||start_year % 400 == 0)
			puts start_year.to_s
		end
	end
	start_year += 1
end