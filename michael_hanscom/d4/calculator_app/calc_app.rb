require "sinatra"

get "/" do
   "Welcome to the calculator							
   

    In order to use the calculator, add a / in the url above, followed by
	the operation/first number/secondnumber.							


	For example, to add 4 and 7, the address would be localhost/4567/add/4/7"
end

get "/add/:first/:second" do |first, second|
	sum = first.to_i + second.to_i
	"The sum of #{first} and #{second} is #{sum}"
end

get "/divide/:first/:second" do |first, second|
	divide = first.to_i/second.to_i
	"The division of #{first} and #{second} is #{divide}"
end

get "/multiply/:first/:second" do |first, second|
	multiply= first.to_i*second.to_i
	"The multiplication of #{first} and #{second} is #{multiply}"
end 

get "/subtract/:first/:second" do |first, second|
	subtract = first.to_i -second.to_i
	"The difference of #{first} and #{second} is #{subtract}"
end

get "/exponent/:first/:second" do |first, second|
	exponent = first.to_i^second.to_i
	"#{first} to the power of #{second} is #{exponent}"
end

