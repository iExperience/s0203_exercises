result = ["Google", "Bing", "Ask Jeeves"].map do |elt|
	if elt == "Google"
		elt = "OK"
	elsif elt == "Bing"
		elt = "Bad!"
	else
		elt = "What is that?"
	end
end

puts result

#map is of class Enumerator
#each is of class Enumerator

