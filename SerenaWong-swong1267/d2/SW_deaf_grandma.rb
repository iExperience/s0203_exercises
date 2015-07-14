while true
	input = gets.strip
	if input == "BYE"
		break
	elsif input == input.upcase && input != ""
		puts "NO, NOT SINCE #{rand(19) + 1931}"
	else
		puts "HUH?! SPEAK UP, SONNY!"
	end
end