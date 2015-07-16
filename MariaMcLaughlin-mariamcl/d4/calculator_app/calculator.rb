require "sinatra"

get "/" do
	erb :calculator_view
end


get "/add/:num1/:num2" do |num1, num2|
	"The sum of #{num1} and #{num2} is #{num1.to_i + num2.to_i}"
end

get "/multiply/:num1/:num2" do |num1, num2|
	"The product of #{num1} and #{num2} is #{num1.to_i * num2.to_i}"
end

get "/subtract/:num1/:num2" do |num1, num2|
	"The difference between #{num1} and #{num2} is #{num1.to_i - num2.to_i}"
end

get "/divide/:num1/:num2" do |num1, num2|
	"The quotient of #{num1} divided by #{num2} is #{num1.to_i / num2.to_i}"
end

get "/exponent/:num1/:num2" do |num1, num2|
	"#{num1} raised to the power of #{num2} is #{num1.to_i ** num2.to_i}"
end
