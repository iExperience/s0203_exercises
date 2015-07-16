def jumble input
	input = input.split(//).shuffle.join
	input
end

def mumble input
	input = input.downcase
	input
end

#better, can do for jumble also
def mumble input
	input.downcase
end

#include checks for empty string to increase efficiency