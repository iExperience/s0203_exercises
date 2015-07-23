def jumble(sentence)
	return sentence if sentence == ''

	sentence.split('').shuffle.join
end

def mumble(sentence)
	return sentence if sentence.empty

	sentence.downcase
end

