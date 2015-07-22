puts = "Sing along to this awesome song - guaranteed headache"

bottle = 99

while bottle >= 0
	if bottle > 1
		puts "#{bottle} bottles of beer on the wall, #{bottle} bottles of beer."
		puts "Take one down, pass it around, #{bottle-1} bottles of beer on the wall."
	elsif bottle > 0
		puts "#{bottle} bottle of beer on the wall, #{bottle} bottle of beer."
		puts "Take one down, pass it around."
	elsif bottle == 0
		puts "Now you've run out of bottles. You're broken."
		puts "You're drunk bru, go home"
	end
	bottle = bottle -1
end 

