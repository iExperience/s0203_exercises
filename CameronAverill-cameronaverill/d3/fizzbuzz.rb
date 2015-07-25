def fizzbuzz(max_val)
	index = 1
	while index <=max_val
		if index%15 == 0 
			p "fizzbuzz"
		elsif index%5 == 0
			p "buzz"
		elsif index%3 == 0
			p "fizz"
		else 
			p index
		end
		index += 1
	end
end

fizzbuzz(0)
fizzbuzz(20)