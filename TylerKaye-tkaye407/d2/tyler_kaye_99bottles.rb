count = 99
while count > 0
	c_s = count.to_s
	if count > 1
       puts c_s + " bottles of beer on the wall"
       puts "   " + c_s + " bottles of beer"
       puts "      " + "Take 1 down, pass it around"
       puts "         " + (count - 1).to_s + " bottles of beer on the wall"
	else
       puts c_s + " bottle of beer on the wall"
       puts "   " + c_s + " bottle of beer"
       puts "      " + "Take 1 down, pass it around"
       puts "         " + (count - 1).to_s + " bottles of beer on the wall"
	end	

count = count - 1
end