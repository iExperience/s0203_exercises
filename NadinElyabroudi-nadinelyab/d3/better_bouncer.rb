def lenient_bouncer
	true
end

def bouncer(age, country)
	country = country.upcase
	if(country == "SOUTH AFRICA")
		if(age >= 18)
			return "You in."
		end
	elsif country == "USA"
		if(age >= 21)
			return "You in."
		end
	end
	"You out."
end

def strict_bouncer(people, letter)
	people_let_in = Array.new
	people.each do |peep|
		name = peep[0]
		age = peep[1]
		if (age.to_i >= 21) && (name[0] != letter)
			people_let_in.push(name)
		end
	end
	people_let_in
end