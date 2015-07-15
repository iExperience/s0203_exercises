def jumble(sentence)
	return sentence if sentence.empty?

	sentence.split("").shuffle.join
end

# puts "jumbling: #{jumble("HI THERE I AM STILL HUNGRY")}"

def mumble(sentence)
	return sentence if sentence.empty?

	sentence.downcase
end

# puts "mumbling: #{mumble("HOWZIT I AM HUNGRY")}"