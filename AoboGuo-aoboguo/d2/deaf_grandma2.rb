bye_count = 0;

while true
	input = gets.strip
	if input == "BYE"
		bye_count += 1
		if bye_count == 3
			break
		end
	else
		bye_count = 0;
	end

	if input == input.upcase && input != ""
		puts "NO, NOT SINCE #{rand(19) + 1931}"
	else
		puts "HUH?! SPEAK UP, SONNY!"
	end
end