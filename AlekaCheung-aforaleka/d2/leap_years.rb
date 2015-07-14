puts "enter starting year: "
starting_year = gets.to_i
puts "enter ending year: "
ending_year = gets.to_i

year = starting_year
answer = Array.new

while year <= ending_year
	if ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)
		answer << year
		year += 1
	else
		year += 1
	end
end

puts "These are the leap years: #{answer}"