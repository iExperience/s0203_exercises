puts "say something to grandma: "
words = gets
number = 3

while words.strip != "BYE"
	if words == words.upcase
		puts "NO, NOT SINCE #{rand(0...20) + 1930}"
		words = gets
	else
		puts "HUH?! SPEAK UP, SONNY!"
		words = gets
	end
end

