puts "Starting Year: "
start = gets.to_i
puts "Ending Year: "
finish = gets.to_i
puts"Leap Years: "

curr_year = start;
leap_year = false;

while !leap_year
	if curr_year % 4 == 0
		leap_year = true
	else
		curr_year += 1
	end
end
print "#{curr_year}"
curr_year += 4

while curr_year <= finish
	if curr_year % 100 == 0 && curr_year % 400 == 0
		print ", #{curr_year}"
	else
		print ", #{curr_year}"
	end
	curr_year += 4
end
print "\n"

		