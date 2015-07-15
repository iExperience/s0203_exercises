#please look at deaf_grandma2 --  I still need to fix this version 

input = gets.chomp
index = 0

while input.length >= index
	if input.length > index
		if input[index] != input[index].upcase
			puts "HUH?! SPEAK UP SONNY!"
		else 
			index = index + 1 
		end
	elsif input.length == index
		if input == "BYE"
			break
		else 
			puts "NO, NOT SINCE 1938!"
			input = gets.chomp
		end
	end
end