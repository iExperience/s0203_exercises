def reverse array
	reversed_array = []
	array.each do |item|
		reversed_array.insert(0, item)

	end
	reversed_array
end 

fruits = ['apples', 'bananas', 'kiwis', 'pears']

reversedfruit = reverse(fruits)

Erica = ["Erica", 24]
Brian = ["Brian", 56]
Michael = ["Michael", 56]

contacts = [Erica, Brian, Michael]
