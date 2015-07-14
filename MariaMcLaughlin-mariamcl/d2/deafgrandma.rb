puts "Say something to grandma: "
me = gets.chomp

puts "HUH?! SPEAK UP SONNY!"

me = gets.chomp

if me == me.upcase
	puts "NO, NOT SINCE 1938!"
else 
	while me != me.upcase
		puts "HUH?! SPEAK UP SONNY!"
		me = gets.chomp
	end 
	puts "NO, NOT SINCE 1938!"
end