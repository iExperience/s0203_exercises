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

def strict_bouncer (array, letter)
	allowed = []
	
	array.each_with_index do |person, index|
		if array[index].last >= 21
			if array[index].first[0] != letter
				allowed << array[index].first
			end
		end
	end
	return allowed
end