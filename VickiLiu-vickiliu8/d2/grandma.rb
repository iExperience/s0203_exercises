

done = false

while !done
	str = gets.strip
	if str.upcase == str 
		num = rand(21)
		print("NO, NOT SINCE #{num + 1930}!\n")
		done = true
	else 
		print("HUH?! SPEAK UP SONNY\n")
	end

end