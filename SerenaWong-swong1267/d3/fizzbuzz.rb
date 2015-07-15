def fizzbuzz(max_val)
	curr_num = 1;
	while curr_num <= max_val
		if curr_num % 15 == 0
			puts "fizzbuzz"
		elsif curr_num % 3 == 0
			puts "fizz"
		elsif curr_num % 5 == 0
			puts "buzz"
		else
			puts curr_num.to_s
		end
		curr_num += 1
	end
end

 fizzbuzz 100