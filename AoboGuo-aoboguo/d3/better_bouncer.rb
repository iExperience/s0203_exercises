def lenient_bouncer
	true
end

def bouncer(age, country)
	if country.strip.downcase == "south africa"
		if age.to_f >= 18.0
			return "You in."
		else
			return "You out."
		end
	elsif country.strip.downcase == "usa"
		if age.to_f >= 21.0
			return "You in."
		else
			return "You out."
		end
	end
end

puts bouncer(18, "USA")

def strict_bouncer(array, letter)
	allowed_in = []
	array.each do |profile|
		person = profile.join(" ")
		name = person.to_s.strip.capitalize.split[0]
		first_letter = person.to_s.strip.downcase[0] 
		age = person.strip.split[1]
			if first_letter == letter.downcase && age.to_f >= 21.0
				allowed_in << name
			else
				allowed_in
			end
		end
	return allowed_in
end

puts strict_bouncer([['isaac', 21], ['hillary', 18], ['ishmael', 30]], "i")