puts "What is your favorite number?"
fav_number = gets.chomp.to_i
bigger_better_number = fav_number + 1 
bigger_better_string = bigger_better_number.to_s
puts "Have you considered adopting " + bigger_better_string.chomp + " as a bigger and better favorite number?"