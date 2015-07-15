def fizzbuzz(max_val)
	current_val = 1	
	while current_val <= max_val
		if (current_val + 3)%3 !=0 && (current_val + 5)%5 != 0
			puts current_val
			current_val = current_val + 1
		elsif (current_val + 3)%3 ==0 && (current_val + 5)%5 != 0
			puts "fizz"
			current_val = current_val + 1
		elsif (current_val + 5)%5 == 0 && (current_val + 3)%3 !=0
			puts "buzz"
			current_val = current_val + 1
		elsif (current_val + 3)%3 ==0 && (current_val + 5)%5 == 0
			puts "fizzbuzz"
			current_val = current_val + 1
		end
	end
end

puts fizzbuzz(100)