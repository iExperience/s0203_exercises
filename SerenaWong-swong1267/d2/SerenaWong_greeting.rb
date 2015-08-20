puts "Please enter your first name: "
first_name = gets.strip
puts "Please enter your middle name: "
middle_name = gets.strip
puts "Please enter your last name: "
last_name = gets.strip

puts "Hello, #{first_name + " " + middle_name + " " + last_name}!"

#better
puts "Hello, #{first_name} #{middle_name} #{last_name}!"
