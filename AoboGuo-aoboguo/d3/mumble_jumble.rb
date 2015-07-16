def jumble(sentence)

	return sentence if sentence.empty?

	sentence.split("").shuffle.join
end

puts jumble("HI THERE I AM STILL HUNGRY")

def mumble(sentence)
	sentence.downcase
end

puts mumble("HI THERE I AM STILL HUNGRY")