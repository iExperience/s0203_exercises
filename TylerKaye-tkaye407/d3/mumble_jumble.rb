def mumble user_input 
	user_input.downcase
end	

def jumble user_input 
	user_input.chomp.split('').shuffle.join
end

stringy = gets 
puts jumble(stringy)