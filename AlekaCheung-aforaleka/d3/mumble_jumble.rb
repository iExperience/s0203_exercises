def jumble(sentence)
	return sentence if sentence.empty? # more efficient if we keep return here
	sentence.split("").shuffle.join
end

# puts "jumbling: #{jumble("HI THERE I AM STILL HUNGRY")}"

def mumble(sentence)
	sentence.downcase #downcasing an empty string gives empty string
end

# puts "mumbling: #{mumble("HOWZIT I AM HUNGRY")}"