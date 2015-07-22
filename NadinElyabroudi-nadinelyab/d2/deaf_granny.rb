puts "Grandma: HI SONNY!"
message = gets.strip
times = 0

while (times < 2)
	if(message == "BYE")
		if times != 0
			times += 1
		else 
			times = 1
		end
		puts "Grandma: HUH?! SPEAK UP, SONNY!"
	elsif(message.upcase == message)
		if times != 0
			times = 0
		end
		year = 1930 + rand(21)
		puts "Grandma: NO, NOT SINCE " + year.to_s
	else 
		if times != 0
			times = 0
		end
		puts "Grandma: HUH?! SPEAK UP, SONNY!"
	end
	message = gets.strip
end

puts "Grandma: OK BYE SONNY BOY!"