
require "sinatra"

get "/" do 
	erb :home_index
end

get "/add/:num1/:num2" do |num1, num2| 
	@num1 = num1.to_i
	@num2 = num2.to_i
	@operation = "add"
	erb :index
end

get "/subtract/:num1/:num2" do |num1, num2|
	@num1 = num1.to_i
	@num2 = num2.to_i
	@operation = "subtract"
	erb :index
end

get "/multiply/:num1/:num2" do |num1, num2|
	@num1 = num1.to_i
	@num2 = num2.to_i
	@operation = "multiply"
	erb :index
end

get "/divide/:num1/:num2" do |num1, num2|
	@num1 = num1.to_i
	@num2 = num2.to_i
	@operation = "divide"
	erb :index
end

get "/exponent/:num1/:num2" do |num1, num2|
	@num1 = num1.to_i
	@num2 = num2.to_i
	@operation = "exponent"
	erb :index
end

