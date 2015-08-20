require "sinatra"

get "/" do
	"This is a calulator app. In the URL, type the operation you want to perform, followed by the two operands, all separated by slashes. This calculator can handle addition, subtraction, multiplication, division, and exponents between two operands."
end

get "/add/:num1/:num2" do |num1, num2|
	"The sum of #{num1} and #{num2} is #{num1.to_i + num2.to_i}!"
end

get "/subtract/:num1/:num2" do |num1, num2|
	"#{num1} minus #{num2} is #{num1.to_i - num2.to_i}!"
end

get "/multiply/:num1/:num2" do |num1, num2|
	"The product of #{num1} and #{num2} is #{num1.to_i * num2.to_i}!"
end

get "/divide/:num1/:num2" do |num1, num2|
	"#{num1} divided by #{num2} is #{num1.to_f / num2.to_f}!"
end

get "/expomnent/:num1/:num2" do |num1, num2|
	"#{num1} raised to the #{num2} power is #{num1 ** num2}!"
end

