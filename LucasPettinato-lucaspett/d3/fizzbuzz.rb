def fizzbuzz(max_val)
	max_val.times do |t|
		t = t + 1
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

numbers = [1, 2, 3]
for x in numbers:
	print x

numbers.each do |x|
	print x
end

python --> enumerate

