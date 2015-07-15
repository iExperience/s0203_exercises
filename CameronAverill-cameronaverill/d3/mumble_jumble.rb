def jumble(str_to_jumble)
	str_to_jumble.split('').shuffle.join('')
end

puts jumble('turtle')

def mumble(str_to_mumble)
	str_to_mumble.downcase
end

puts mumble('TURTLE')