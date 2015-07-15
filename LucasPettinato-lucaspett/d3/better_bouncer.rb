def lenient_bouncer
	true
end

def bouncer(age, country)
	if age >= 18 && country == "south africa"
		puts "You in."
	elsif age >= 21 && country == "usa"
		puts "You in."
	else
		puts "You out"
	end
end

puts bouncer(21, "usa")
puts bouncer(18, "south africa")
puts bouncer(17, "usa")
puts bouncer(17, "south africa")

def strict_bouncer(person, letter)
	allowed_list = []
	person.each do |name,age|
		if (name[0] != letter) && (age >= 21)
			allowed_list.push(name)
		end
	end
	"#{allowed_list}, "
end

puts strict_bouncer([["erica", 22], ["ian", 24], ["brian", 34], ["seth", 18]], "i")
puts
puts strict_bouncer([["aaron", 28], ["rafi", 21]], "i")







