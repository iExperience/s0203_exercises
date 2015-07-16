require "sinatra"

get "/" do      
	erb :index
end

get "/add/:number1/:number2" do |number1, number2|
	@n1 = number1.to_i
	@n2 = number2.to_i
	erb :add
end

get "/multiply/:number1/:number2" do |number1, number2|
	@n1 = number1.to_i
	@n2 = number2.to_i
	erb :multiply
end

get "/subtract/:number1/:number2" do |number1, number2|
	@n1 = number1.to_i
	@n2 = number2.to_i
	erb :subtract
end

get "/divide/:number1/:number2" do |number1, number2|
	@n1 = number1.to_i
	@n2 = number2.to_i
	erb :divide
end

get "/exponent/:number1/:number2" do |number1, number2|
	@n1 = number1.to_i
	@n2 = number2.to_i
	erb :exponent
end

