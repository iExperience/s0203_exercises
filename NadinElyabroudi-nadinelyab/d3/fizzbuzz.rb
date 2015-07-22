def fizzbuzz(max_val)
	num = 1
	while(num <= max_val)
		if(num % 15 == 0)
			puts "fizzbuzz"
		elsif(num % 3 == 0)
			puts "fizz"
		elsif(num % 5 == 0)
			puts "buzz"
		else
			puts num
		end
		num += 1
	end
end

fizzbuzz(100)