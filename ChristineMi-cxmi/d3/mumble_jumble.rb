def jumble(message)
	message.split(//).shuffle.join('')
end

puts jumble("HI THERE I AM STILL HUNGRY")

def mumble(message)
	message.downcase
end

puts "HOWZIT I AM HUNGRY"