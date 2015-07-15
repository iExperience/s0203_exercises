array = [1,2,3,4,5]

def doitall(numbers)
	numbers.each do |element|
		yield element
	end
end

doitall(array) do |item|
	puts item
end




