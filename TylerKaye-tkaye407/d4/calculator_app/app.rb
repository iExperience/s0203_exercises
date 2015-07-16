require "sinatra"

get "/" do 
	erb :home 
end

get '/add/:num1/:num2' do |num1, num2|
	result = "The Sum of " + num1 + " and " + num2
	result += " is " + (num1.to_i+num2.to_i).to_s
	@return_string = result
	erb :add
end	
get '/subtract/:num1/:num2' do |num1, num2|
	result = "The Difference between " + num1 + " and " + num2
	result += " is " + (num1.to_i-num2.to_i).to_s
	@return_string = result
	erb :add
end	
get '/multiply/:num1/:num2' do |num1, num2|
	result = "The Product of " + num1 + " and " + num2
	result += " is " + (num1.to_i*num2.to_i).to_s
	@return_string = result
	erb :add
end	
get '/divide/:num1/:num2' do |num1, num2|
	result = "The Quotient of " + num1 + " and " + num2
	result += " is " + (num1.to_i/num2.to_i).to_s
	remainder = num1.to_i % num2.to_i
	if remainder != 0 
		result += " with a remainder of " + remainder.to_s
	end	
	@return_string = result
	erb :add
end	
get '/exponent/:num1/:num2' do |num1, num2|
	result = "" + num1 + " to the " + num2
	result += " power is " + (num1.to_i ** num2.to_i).to_s
	@return_string = result
	erb :add
end	
