def lenient_bouncer
	answer = true
end

def bouncer(age, country)
	if country.upcase.strip == "USA"
		if age >= 21
			puts "You in."
		else
			puts "You out."
		end
	end
	if country.upcase.strip == "SOUTHAFRICA"
		if age >= 18
			puts "You in."
		else
			puts "You out."
		end
	end
end

def strict_bouncer(people, letter)
	people_in = Array.new

    people.each do |name, age|
    	get_in = ((name[0] != letter) && (age >= 21)) 
  		if get_in
    		people_in.push name
    	end
    end

    people_in
end

people_array = Array.new
people_array[0] = ['erica', 20]
people_array[1] = ['ian', 24]
people_array[2] = ['john', 25]

puts strict_bouncer(people_array, 'j')
