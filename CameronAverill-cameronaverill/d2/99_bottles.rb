index = 99
while index >= 1
	if index > 1
		puts "#{index} bottles of beer on the wall. #{index} bottles of beer. You take one down, pass it around, #{index} bottles of beer on the wall"
	else
		puts "#{index} bottle of beer on the wall. #{index} bottle of beer. You take one down, pass it around, #{index} bottle of beer on the wall"
	end
	index = index - 1
end