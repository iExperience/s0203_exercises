puts "say something to grandma: "
words = gets
year = rand(0...20)
while words.strip != "BYE"
	if words == words.upcase
		puts "NO, NOT SINCE #{year + 1930}"
		words = gets
	else
		puts "HUH?! SPEAK UP, SONNY!"
		words = gets
	end
end
