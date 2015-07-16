def fizzbuzz(max_val)
	
	index = 0

		while index <= max_val
			if index % 15 == 0
				puts "fizzbuzz"
			elsif index % 3 == 0
				puts "fizz"
			elsif index % 5 == 0
				puts "buzz"
			else
				puts index
			end
			index = index + 1
		end
end

fizzbuzz 100