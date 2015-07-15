def lenient_bouncer
	true
end

def bouncer(age, country)
	if country.strip.downcase == "south africa" && age >= 18
		return "You in."
	elsif country.strip.downcase == 'usa'  && age >= 21
		return "You in."
	end
	"You out."
end

def strict_bouncer(people, letter)
	allowed_in = []
	people.each do |person|
		if person[0][0] != letter && person[1] >= 21
			allowed_in.push person[0]
		end
	end
	allowed_in
end

