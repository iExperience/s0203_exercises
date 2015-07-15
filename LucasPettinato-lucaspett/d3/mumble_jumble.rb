def jumble(sentence)
	sentence = sentence.split("").shuffle.join("")
end

puts jumble("HI THERE I AM STILL HUNGRY")

def mumble(sentence)
	sentence = sentence.downcase
end

puts mumble("HOWZIT I AM HUNGRY")