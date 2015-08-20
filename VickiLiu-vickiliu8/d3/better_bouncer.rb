def lenient_bouncer
	return true
end

def bouncer(age, country)
	if (age >= 21 && country.downcase == "usa")
		"You in."
	elsif (age >= 18 && country.downcase == "south africa")
		"You in."
	else
		"You out."
	end
end


def strict_bouncer(two_d_array, letter)
	people = Array.new
	#array.find_all{|a| a.name >= 21 && a.name[0].downcase != letter.downcase}
	two_d_array.each do |name, age|
		allowed = (name[0] != letter.downcase) && (age >= 21)
		if allowed
			person = name
			people.push(person)
		end

	end
	people
end

puts strict_bouncer([["erica", 21], ["ian", 24],["brian", 34],["seth", 18]], "i")
puts strict_bouncer([["Aaron", 28], ["rafi", 21]], "i")
if lenient_bouncer
	puts "is lenient"
end

puts bouncer(21, "usa")
puts bouncer(16, "UsA")
puts bouncer(15, "south AfriCa")
puts bouncer(34, "SOUTH AFRICA")

