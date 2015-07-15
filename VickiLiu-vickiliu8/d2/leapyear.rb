puts "enter starting year"
syear = gets.to_i
puts "enter ending year"
eyear = gets.to_i

puts "these are leap years"
while syear <= eyear 
if (syear%4 == 0 && syear%100 != 0) || (syear%400 == 0)
	puts syear
	
end

 syear += 1
end