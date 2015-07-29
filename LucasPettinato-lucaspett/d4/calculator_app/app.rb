require "sinatra"

get "/" do 
	erb :index
end

get "/add/:num_first/:num_second" do |num_first, num_second|
	sum = num_first.to_i + num_second.to_i
	"The sum of #{num_first} and #{num_second} is #{sum}"
end

get "/subtract/:num_first/:num_second" do |num_first, num_second|
	difference = num_first.to_i - num_second.to_i
	"The differ of #{num_first} and #{num_second} is #{difference}"
end

get "/multiply/:num_first/:num_second" do |num_first, num_second|
	product = num_first.to_i * num_second.to_i
	"The product of #{num_first} and #{num_second} is #{product}"
end

get "/divide/:num_first/:num_second" do |num_first, num_second|
	quotient = num_first.to_i / num_second.to_i
	"The quotient of #{num_first} and #{num_second} is #{quotient}"
end

get "/exponent/:num_first/:num_second" do |num_first, num_second|
	power = num_first.to_i ** num_second.to_i
	"The power of #{num_first} and #{num_second} is #{power}"
end





