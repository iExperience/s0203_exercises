def jumble(sentence)
	return sentence if sentence.empty?
	
	sentence.split("").shuffle.join
end

def mumble(sentence)
	return sentence if sentence.empty?

	sentence.downcase
end