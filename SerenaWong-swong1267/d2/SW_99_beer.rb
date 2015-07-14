puts "The masterpiece: 99 Bottles of Beer on the Wall: "

count = 99
while count > 1
	puts "#{count} bottles of beer on the wall, #{count} bottles of beer! \n\tTake one down, pass it around, #{count - 1} bottles of beer on the wall!"
	count -= 1
end
puts "1 bottle of beer on the wall, 1 bottle of beer! \n\tTake one down, pass it around, no more bottles of beer on the wall!"
