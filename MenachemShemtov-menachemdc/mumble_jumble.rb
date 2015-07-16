def jumble(sentence)
	return sentence if sentence.empty?
	sentence.split('').shuffle.join('')
end

puts jumble("Nice, Bru! Try to talk properly")

def mumble(sentence)
	return sentence if sentence.empty?
	sentence.downcase
end

puts mumble "HEY WHATS UP!"

