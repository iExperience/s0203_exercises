puts "Say something to your Grandma"

yourspeech = gets.strip

while (!(yourspeech == "BYE"))
	if ((yourspeech.upcase) == yourspeech)
		rnum = 1930 + rand(20)
		puts "Grandma: NO, NOT SINCE #{rnum}"
		yourspeech = gets.strip
	else 
		puts "HUH?! SPEAK UP SONNY!"
		yourspeech = gets.strip
	end
end