def fizzbuzz(max_val)
	array = (1..max_val)
	array.each do |number|
		if number % 15 == 0
			puts "fizzbuzz"
		elsif number % 5 == 0
			puts "buzz"
		elsif number % 3 == 0
			puts "fizz"
		else
			puts number
		end
	end
end

fizzbuzz(50)


