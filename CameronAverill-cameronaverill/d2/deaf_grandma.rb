puts "How are you, dear?"
answer = gets.chomp

while answer!='BYE'	
	while answer != answer.upcase
		puts "HUH?! SPEAK UP, SONNY!"
		answer = gets.chomp
	end

	currentYear = rand(21)
	currentYear = currentYear + 1930
	puts "NO, NOT SINCE #{currentYear}!"
	answer = gets.chomp
end