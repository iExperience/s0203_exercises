def fizzbuzz(max_val)
  index = 1
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
  	index += 1		
  end	

end
fizzbuzz(100)

# BONUS: method returns the value from the line index = 1 
#        so it returns 1