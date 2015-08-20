def jumble(sentence)
	return sentence if sentence.empty?
	sentence.split("").shuffle.join("")
end

puts jumble("blah")
puts jumble("abdefghijk lmnop qrs")
puts jumble("")

def mumble(sentence)
	return sentence if sentence.empty?
	sentence.downcase
end

puts mumble("WHAT DID YOU SAY")
puts mumble("DID YOU SAY CHOCOLATE")
puts mumble("sweet sweet chocolate... I ALWAYS HATED IT")
puts mumble("")