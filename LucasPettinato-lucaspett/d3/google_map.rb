# map.rb

result = []
engines = ["Google", "Bing", "Ask Jeeves"]
engines.each do |e|
	if e == "Google"
		result.push("OK")
	elsif e == "Bing"
		result.push("Bad!")
	else
		result.push("What is that?")
	end
end

result
		