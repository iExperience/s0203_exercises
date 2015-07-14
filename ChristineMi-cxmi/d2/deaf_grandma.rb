message = gets.strip

while message != "BYE"
if message == message.upcase
	year = rand(21) + 1930
	puts "NO, NOT SINCE #{year}"
	message = gets.strip
else
	puts "HUH?! SPEAK UP, SONNY!"
	message = gets.strip
end
end

