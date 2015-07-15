def map_array(array)
	array.map do |element|
		if element == "Google"
			element = "OK"
		elsif element == "Bing"
			element = "Bad!"
		else
			element = ("What is that?")
		end
	end
end

p map_array(["Google", "Bing", "Ask Jeeves"])

				