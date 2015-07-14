puts "How are you, dear?"
answer = gets.chomp

byecount = 0

while byecount < 2
	if(answer == 'BYE')
		byecount = byecount + 1
		puts byecount
	end
	
	if answer != answer.upcase
		puts "HUH?! SPEAK UP, SONNY!"
		answer = gets.chomp
	else
		currentYear = rand(21)
		currentYear = currentYear + 1930
		puts "NO, NOT SINCE #{currentYear}!"
		answer = gets.chomp
	end
end