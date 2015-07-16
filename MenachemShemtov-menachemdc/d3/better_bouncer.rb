def lenient_bouncer
	true
end

def bouncer(age, country)
	if age >= 18 && country.downcase = "south africa"
		puts "you in"
	elsif age < 18 && country.downcase = "south africa"
		puts "you out"
	elsif age >= 21 && country.upcase = "USA"
		puts "you in"
	elsif age < 21 && country.upcase = "USA"
		puts "you out"
	end
end

def strict_bouncer(array_of_people, letter)
	array_of_people_allowed = []
		array_of_people.each do |person|
			if person[1] >= 21 && person[0][0] != letter
				array_of_people_allowed << person[0]
			end
	puts array_of_people_allowed
end