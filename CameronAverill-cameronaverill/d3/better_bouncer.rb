def lenient_bouncer
	true
end

puts lenient_bouncer

def bouncer(age, country)
	if((country.downcase == 'south africa' && age >= 18) || (country.downcase == 'usa' && age>=21))
		"You in."
	else
		"You out."
	end
end

puts bouncer(21, 'UsA')
puts bouncer(18, 'UsA')
puts bouncer(7, 'south Africa')
puts bouncer(18, 'SOUTH AFRICA')

def strict_bouncer(people, letter)
	allowed_names = []
	people.each do |person|
		person_name = person[0]
		person_age = person[1]
		if !(person_name[0].downcase == letter || person_age < 21)
			allowed_names.push(person_name)
		end
	end
	allowed_names
end

p strict_bouncer([['erica', 22], ['ian', 24], ['brian', 34], ['seth', 18]], 'i')
p strict_bouncer([['aaron', 28], ['rafi', 21]], 'i')



