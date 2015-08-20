

beer = 99
done = false
while !done
	if (beer == 1) 
		print ("#{beer} bottle of beer on the wall, #{beer} bottle of beer\n")
		print("Take one down pass it around, no more bottles of beer on the wall\n")
		done = true
	else
		print("#{beer} bottles of beer on the wall, #{beer} bottles of beer.\n")
		beer = beer - 1
		print("Take one down and pass it around, #{beer} bottles of beer on the wall\n")
	end
end

beer = "no more"

print("#{beer} bottles of beer on the wall, #{beer} bottles of beer.\n")
beer = 99
print("Go to the store, buy some more, #{beer} bottles of beer on the wall\n")