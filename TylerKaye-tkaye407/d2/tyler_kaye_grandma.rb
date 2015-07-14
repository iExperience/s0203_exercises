puts "Hi, Sonny....what did you come to tell me? : "
print "Child:   "
answer = gets.chomp;
num = 0;
while (num < 3)
	if answer == "BYE"
		num += 1
		if num == 3
			break 
		else 	
			puts "Grandma: SORRY SONNY, I ALMOST HEARD YOU...DONT GO"
		end	
	elsif (answer == answer.upcase)
		num = 1930 + rand(21)
		puts "Grandma: NO, NOT SINCE " + num.to_s + "!"
		num = 0
	else 
		puts "Grandma: HUH?! SPEAK UP, SONNY!"
		num = 0	
	end	
	print "Child:   "
	answer = gets.chomp	
end