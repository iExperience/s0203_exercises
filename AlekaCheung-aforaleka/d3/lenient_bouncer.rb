def lenient_bouncer
	true
end


def bouncer(age, country)
	country = country.downcase
	if country == "south africa"
		if age < 18
			puts "You out."
		else
			puts "You in."
		end

	elsif country == "usa"
		if age < 21
			puts "You out."
		else
			puts "You in."
		end
	
	else
		puts "sorry man, don't know where you're from."
	end
end



def strict_bouncer(people_array, letter)
	allowed_list = Array.new

	people_array.each do |name, age|
		if (name[0] != letter) && (age >= 21)
			allowed_list << name
		end
	end
	allowed_list
end


# lenient bouncer:
# puts lenient_bouncer

# bouncer:
# puts bouncer(18, 'South Africa')
# puts bouncer(16, 'South Africa')
# puts bouncer(21, 'USA')
# puts bouncer(18, 'uSa')
# puts bouncer(4, 'sfd')

# strict bouncer:
# strict_bouncer([['erica', 22], ['ian', 24], ['brian', 34], ['seth', 18]], 'i')
# puts strict_bouncer([['aaron', 28], ['rafi', 21]], 'i')





