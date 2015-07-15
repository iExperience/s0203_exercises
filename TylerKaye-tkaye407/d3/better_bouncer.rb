def lenient_bouncer 
	true
end	

def bouncer age, country
	if age >= 21 && country.downcase == "usa"
		"You in."
	elsif age >= 18 && country.downcase = "south africa"
		"You in."
	else 
		"You out."
	end	
end	

def strict_bouncer(array_people, letter)
	string_for_names = ""
	array_people.each do |person|
		age = person[1]
		name = person[0]
    	if age >= 21 && name[0] != letter
			string_for_names += name + " "
		end	
	end	
	array_for_names = string_for_names.split
end

puts strict_bouncer([['aaron', 28], ['rafi', 21]], 'i')