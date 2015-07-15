puts "Hello! What is your first name?"
request1 = gets.chomp.to_s.capitalize

puts "And your middle name?"
request2 = gets.chomp.to_s.capitalize

puts "And finally, your last name please?"
request3 = gets.chomp.to_s.capitalize

if request2 != ""
	print "Hello, " + request1 + " " + request2 + " " + request3 + "!"
#the reason I put in the elsif is because some people don't have middle names
#when they don't have a middle name, the first "if" statement prints out 
#an additional space between the first name and the last name, which
#looks ugly
elsif request2 == ''
	print "Hello, " + request1 + " " + request2 + request3 + "!"
end
