def lenient_bouncer
	true
end

puts lenient_bouncer

def bouncer(age, country)
	country = country.downcase.strip
	if (age.to_i >= 18 && country == "south africa") || (age.to_i >= 21 && country == "usa")
		puts "You in"
	else 
		puts "Go away"
	end
end


puts bouncer(15, "south AFRIca")

def strict_bouncer(array, letter)
	
not_bounced = []
	array.each do |person|
		if (person[1] >= 21) && (person[0][0].downcase != letter.downcase)
		not_bounced.push person[0]

		end

	end
	#if array[0][1] >= 21
		#puts array[0][0]
	#end
not_bounced
end

puts strict_bouncer([['erica', 22], ['ian', 24], ['brian', 34], ['seth', 18]], 'i')

puts strict_bouncer([['aaron', 28], ['rafi', 21]], 'i')
