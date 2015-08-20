number = 99

while number > 1
	puts "#{number} bottles of beer on the wall, #{number} bottles of beer."
	number -= 1
	if number == 1
		puts "Take one down and pass it around, #{number} bottle of beer on the wall."
	else
		puts "Take one down and pass it around, #{number} bottles of beer on the wall."
	end
end
puts "#{number} bottle of beer on the wall, #{number} bottle of beer."
puts "Take #{number} down and pass it around, no more bottles of beer on the wall."
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
