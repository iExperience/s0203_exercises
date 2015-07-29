while true 
	puts "Say something to grandma"
	talk = gets.chomp 

	if talk == "BYE"
		break 
	elsif talk != talk.upcase 
		puts "HUH?! SPEAK UP, SONNY!"
	else talk == talk.upcase
		puts "NO, NOT SINCE #{rand(1930...1950)}!"
	end
end

puts "GOODBYE MY SWEET CHILD <3"

