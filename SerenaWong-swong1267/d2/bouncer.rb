bouncer_name = "George"
customer_name = "Lucas"
customer_age = 65
happy = false

unless happy
	puts "Cheer up, bru!"
end

# if !happy
# 	puts "Cheer up, bru!"
# end

# ********** bad practice; use if condition followed by statement
# puts "You are old, #{customer_name}!" if customer_age > 50

# unless customer_age < 18
# 	puts "#{bouncer_name}: Go away, #{customer_name}!"
# end

# if customer_age >= 50
# 	puts "#{bouncer_name}: Hello, Mr. #{customer_name}, welcome to the club!"
# elsif customer_age >= 18
# 	puts "#{bouncer_name}: Come in!"
# else
# 	puts "#{bouncer_name}: Go away, #{customer_name}!"
# end