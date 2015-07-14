puts "Leap Year Calculator! Please input a year"

start = gets.to_i

puts "Please put in an end year"

ender = gets.to_i

puts " "

if (start > ender) 
	temp = start
	start = ender
	ender = temp
end

while !(((start%4) == 0))
		start = start + 1
end

while (start <= ender)
	puts start.to_s
	start = start.to_i + 4
end

