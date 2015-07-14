puts "Give me a starting year"

start = gets.strip.to_i

puts "Give me an ending year"

ending = gets.strip.to_i

while start <= ending 
	if start%4 == 0 && start%10 != 0
		puts start 
	end
	start = start + 1
end


