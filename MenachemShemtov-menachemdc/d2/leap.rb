puts "Please enter two years, and I'll tell you the amount of leap years between them."
puts "Starting Year"
start = gets.chomp.to_i
puts "End year"
finish = gets.chomp.to_i

puts "The following years are leapyears:"

while start <= finish
	if start % 4 == 0 && start % 100 != 0 || start % 400 == 0
		puts start
	end
	start = start + 1
end

