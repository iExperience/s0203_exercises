require "sinatra"

get "/" do
	erb :home_page
end 

get "/add/:number1/:number2" do |number1, number2|
	sum_of_nums = number1.to_i + number2.to_i
	"The sum of #{number1} and #{number2} is #{sum_of_nums}"
end

get "/multiply/:number1/:number2" do |number1, number2|
	product_of_nums = number1.to_i * number2.to_i
	"The product of #{number1} and #{number2} is #{product_of_nums}"
end

get "/divide/:number1/:number2" do |number1, number2|
	quotient_of_nums = number1.to_f / number2.to_f
	"The quotient of #{number1} and #{number2} is #{quotient_of_nums}"
end

get "/subtract/:number1/:number2" do |number1, number2|
	difference_of_nums = number1.to_i - number2.to_i
	"The difference of #{number1} and #{number2} is #{difference_of_nums}"
end

get "/exponentiate/:number1/:number2" do |number1, number2|
	exponent_of_nums = number1.to_i ** number2.to_i
	"#{number1} to the power of #{number2} is #{exponent_of_nums}"
end

