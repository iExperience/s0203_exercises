puts "Welcome to the Leap Year Generator!"
puts "What is the starting year?"

start = gets.strip.to_i

puts "What is the ending year?"

ending = gets.strip.to_i

while start < ending
	while (start%4 == 0) && (start%100 != 0) || start%400 == 0
		puts start
		start = start + 1
	end
start = start + 1
end