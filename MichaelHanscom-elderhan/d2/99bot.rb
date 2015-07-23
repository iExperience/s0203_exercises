botnum = 99
botnum2 = botnum - 1

while (!(botnum == 0)) 
    if (botnum2 == 1)
    	puts botnum.to_s + " bottles of beer on the wall, " + botnum.to_s + 
		" bottles of beer, you take one down and pass it around, " + botnum2.to_s + 
		" bottle of beer on the wall"
		botnum = botnum - 1
    	botnum2 = botnum2 - 1
    elsif (botnum == 1)
    	puts botnum.to_s + " bottle of beer on the wall, " + botnum.to_s + 
		" bottle of beer, you take one down and pass it around, " + botnum2.to_s + 
		" bottles of beer on the wall"
		botnum = botnum - 1
    	botnum2 = botnum2 - 1
    else
    puts botnum.to_s + " bottles of beer on the wall, " + botnum.to_s + 
	" bottles of beer, you take one down and pass it around, " + botnum2.to_s + 
	" bottles of beer on the wall"
    botnum = botnum - 1
    botnum2 = botnum2 - 1
	end
end
     