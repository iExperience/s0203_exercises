bottles = 99

while bottles > 0
	puts "#{bottles} bottles of beer on the wall, 
#{bottles} bottles of beer, take one down pass it around, 
#{bottles - 1} bottles of beer on the wall"
	bottles = bottles - 1
end

if bottles == 0 then 
	puts "No more bottles of beer on the wall, 
no more bottles of beer, take one down pass it around, 
no more bottles of beer on the wall"
end