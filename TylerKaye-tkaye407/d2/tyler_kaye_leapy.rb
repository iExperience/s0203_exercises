print "Please enter your starting year: "
sta = gets
print "Please enter your ending year  : "
en = gets
beg = sta.to_i
ends = en.to_i
while(ends >= beg)
	if ( (beg % 4 == 0) && ( (beg % 100 != 0) || (beg % 400 == 0) ) ) 
		puts beg.to_s
	end	
	beg =  beg + 1
end
