puts "Hey Dear, who's there?"
answer = gets.chomp

while answer != "K IM LEAVING"
	
	if answer == answer.upcase
		puts "NO NOT SINCE " + (1925 +rand(49)).to_s + '!'
	else
		puts "HUH?! SPEAK UP, DEAR"
	end
	
	answer = gets.chomp
end

puts "KIDS THESE DAYS!"

# adios = 0

# while adios < 4
	
# 	answer = gets.chomp
	
# 	if answer == answer.upcase
# 		puts "NO NOT SINCE " + (1925 +rand(49)).to_s + '!'
# 	else 
# 		puts "HUH?! SPEAK UP, DEAR" 
# 	end

# 	if answer == "K IM LEAVING"
# 		adios = adios + 1
# 	else
# 		adios = 0
# 	end
# end





