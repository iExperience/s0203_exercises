puts "say something to grandma: "
count = 0

while count < 3 
	words = gets

	if words.strip == "BYE"
		count += 1
	elsif words == words.upcase
		puts "NO, NOT SINCE #{rand(0...20) + 1930}"
		count = 0
	else
		puts "HUH?! SPEAK UP, SONNY!"
		count = 0
	end

	if count == 3
		puts "bye"
	end
end



