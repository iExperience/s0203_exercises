def reverse(array)
	answer = []
	array.each do |element|
		answer.unshift(element)
	end
	answer
end

p reverse(['turtle', 'sushi', 'latvia'])