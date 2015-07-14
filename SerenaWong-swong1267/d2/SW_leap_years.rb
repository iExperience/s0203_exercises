puts "Starting Year: "
start = gets.to_i
puts "Ending Year: "
finish = gets.to_i
puts"Leap Years: "

curr_year = start;

while curr_year <= finish
	if curr_year % 100 == 0 && curr_year % 400 == 0 || curr_year % 4 == 0 && curr_year % 100 != 0
		puts "#{curr_year}"
		curr_year += 4
	else
		curr_year += 1
	end
end


		