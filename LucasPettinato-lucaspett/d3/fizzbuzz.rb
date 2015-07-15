def fizzbuzz(max_val)
	max_val.times do |t|
		if t % 15 == 0
			puts "fizzbuzz"
		elsif t % 5 == 0
			puts "buzz"
		elsif t % 3 == 0
			puts "fizz"
		else
			puts t
		end
	end
end

fizzbuzz(100)

