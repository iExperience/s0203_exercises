def lenient_bouncer
	true
end

def bouncer (age, country)
	if country.downcase == "south africa" && age >= 18
		puts "You in."
	elsif country.downcase == "usa" && age >= 21
		puts "You in."
	else
		puts "You out."
	end
end

def strict_bouncer (people, letter)
	allowed = []
	
	people.each_with_index do |person, index|
		if people[index].last >= 21
			if people[index].first[0] != letter
				allowed << people[index].first
			end
		end
	end
	return allowed
end