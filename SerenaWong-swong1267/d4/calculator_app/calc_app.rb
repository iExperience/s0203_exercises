require "sinatra"

get "/" do
	"This is a calulator app"
	erb :index
end

get "/add/:num1/:num2" do |num1, num2|
	@sum = num1 + num2
	erb :index
end

get "/subtract/:num1/:num2" do |num1, num2|
	@difference = num1 + num2
	erb :index
end

get "/multiply/:num1/:num2" do |num1, num2|
	@product = num1 + num2
	erb :index
end

get "/divide/:num1/:num2" do |num1, num2|
	@quotient = num1 + num2
	erb :index
end

get "/expomnent/:num1/:num2" do |num1, num2|
	@answer = num1 + num2
	erb :index
end

