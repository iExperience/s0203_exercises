engines = ["Google", "Bing", "Ask Jeeves"]
engines.map do |e|
	if e == "Google"
		e = "OK"
	elsif e == "Bing"
    	e = "Bad!"
	else
    	e = "What is that?"
    end
end