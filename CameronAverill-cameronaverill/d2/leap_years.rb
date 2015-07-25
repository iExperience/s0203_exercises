puts "Enter a starting year"
startingYear = gets.chomp.to_i

puts "Enter an ending year"
endingYear = gets.chomp.to_i

currentYear = startingYear
startLeapYear = nil

while startLeapYear == nil && currentYear <= endingYear
	if (currentYear % 4 == 0) 
		if(currentYear % 100 == 0)
			if (currentYear % 400 == 0)
				startLeapYear = currentYear
			else
				currentYear += 1
			end
		else
			startLeapYear = currentYear
		end
	else
		currentYear += 1
	end
end

if(startLeapYear == nil)
	puts "There are no leap years between these two years"
else
	while startLeapYear <= endingYear
		puts startLeapYear
		startLeapYear+=4
	end
end

	