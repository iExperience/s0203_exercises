def jumble(sentence)

	return sentence if sentence.empty?

	sentence.split("").shuffle.join
end

puts jumble("HI THERE I AM STILL HUNGRY")
