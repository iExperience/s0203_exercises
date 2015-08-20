require "sinatra"

get "/" do
	"Welcome to my calculator application!
	To use the calculator application, 
	please go to your url and type in the operation you would like to use behind the /.
	The different operators you can choose from are add, multiply, divide, subtract, and exponent.
	After adding the operator to the url, please put another / and the first number you would like to use.
	Then, put another / and then the second number you would like to use.
	For addition, the first and second number that you put in will be added, 
	so the order of the numbers does not matter. The same is true for multiplication.
	However, for subtraction, the second number you put in will be subtracted from the first one.
	This same logic is true for division, where the first number will be divided by the second.
	The exponent function will raise the first number to the second number.
	For instance, if I want to calculate the sum of 5 and 2, I would add to the url: /add/5/2
	This makes the complete url the following: http://localhost:4567/add/5/2
	The number parameters (meaning first number and second number) can take any form of number,
	such as integers, decimals, negatives, etc.
	Enjoy!"
end

get "/add/:first_num/:second_num" do |first_num, second_num|
	sum = first_num.to_f + second_num.to_f
	"The sum of #{first_num} and #{second_num} is " + sum.to_s + "!"
end

get "/multiply/:first_num/:second_num" do |first_num, second_num|
	product = first_num.to_f * second_num.to_f
	"The product of #{first_num} and #{second_num} is " + product.to_s + "!"
end

get "/divide/:first_num/:second_num" do |first_num, second_num|
	quotient = first_num.to_f / second_num.to_f
	"The quotient of #{first_num} and #{second_num} is " + quotient.to_s + "!"
end

get "/subtract/:first_num/:second_num" do |first_num, second_num|
	difference = first_num.to_f - second_num.to_f
	"The difference of #{first_num} and #{second_num} is " + difference.to_s + "!"
end

get "/exponent/:first_num/:second_num" do |first_num, second_num|
	value = first_num.to_f ** second_num.to_f
	"The value of #{first_num} raised to the #{second_num} is " + value.to_s + "!"
end