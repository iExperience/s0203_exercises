def jumble(sentence)
	sentence.split("").shuffle.join
end

def mumble(sentence)
	sentence.downcase
end

sentence = gets.strip
puts jumble(sentence)
puts mumble(sentence)
