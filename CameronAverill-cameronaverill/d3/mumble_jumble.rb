def jumble(str_to_jumble)
	str_to_jumble.split('').shuffle.join('')
end

puts jumble('the dog')
puts jumble('turtle')
puts jumble('')
puts jumble("Nice, Bru! Try to talk properly")

def mumble(str_to_mumble)
	str_to_mumble.downcase
end

puts mumble('TURTLE')