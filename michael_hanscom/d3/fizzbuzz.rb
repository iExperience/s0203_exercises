def fizzbuzz(max_val)
   count = 1
   while (count <= max_val)
   	    if (count%15 == 0)
   	    	puts "fizzbuzz"
   	    else
   			if (count%3 == 0)
   				puts "fizz"
   			elsif (count%5 == 0)
   				puts "buzz"
   			else
   				puts count
   			end
   		end
   		count +=1
   	end
end

fizzbuzz(100)