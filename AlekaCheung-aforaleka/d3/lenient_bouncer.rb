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

# printing the answers
# puts bouncer(18, 'South Africa')
# puts bouncer(16, 'South Africa')
# puts bouncer(21, 'USA')
# puts bouncer(18, 'uSa')
# puts bouncer(4, 'sfd')

#this guy's having a bad day
def strict_bouncer(array, letter)
	count = 0
	allowed_list = Array.new

	while count < array.length
		if array[count][0][0] == letter
			count += 1
		elsif array[count][1] < 21
			count += 1
		else
			allowed_list << array[count][0]
			count += 1
		end
	end
	allowed_list
end

# printing the answers
# puts strict_bouncer([['erica', 22], ['ian', 24], ['brian', 34], ['seth', 18]], 'i')
# puts strict_bouncer([['aaron', 28], ['rafi', 21]], 'i')





