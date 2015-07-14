bottles = 99
while (bottles > 1)
	puts (bottles.to_s + " bottles of beer on the wall")
	puts (bottles.to_s + " bottles of beer")
	puts ("Take one down and pass it around")
	bottles -= 1
	puts bottles.to_s + " bottles of beer on the wall"
	puts ""
end

puts (bottles.to_s + " bottle of beer on the wall")
puts (bottles.to_s + " bottle of beer")
puts ("Take one down and pass it around")
bottles -= 1
puts "No more bottles of beer on the wall"
puts ""

puts "No more bottles of beer on the wall"
puts "No more bottles of beer"
puts "Go to the store and buy some more,"
puts "99 bottles of beer on the wall."