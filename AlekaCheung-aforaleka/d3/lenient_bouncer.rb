#this dude lets everyone in the club
def lenient_bouncer
	true
end

#this dude does his job
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

	people_array.each do |people|
		if (people[0][0] != letter) && (people[1] >= 21)
			allowed_list << people[0]
		end
	end
	allowed_list
end

# bouncer:
# puts bouncer(18, 'South Africa')
# puts bouncer(16, 'South Africa')
# puts bouncer(21, 'USA')
# puts bouncer(18, 'uSa')
# puts bouncer(4, 'sfd')

# strict bouncer:
puts strict_bouncer2([['erica', 22], ['ian', 24], ['brian', 34], ['seth', 18]], 'i')
puts strict_bouncer2([['aaron', 28], ['rafi', 21]], 'i')





