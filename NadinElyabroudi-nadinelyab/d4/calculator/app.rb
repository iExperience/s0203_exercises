require 'sinatra'

get "/" do
	erb :index	
end

get "/add/:n1/:n2" do |n1, n2|
	@n1 = n1
	@n2 = n2
	erb :add
end

get "/multiply/:n1/:n2" do |n1, n2|
	@n1 = n1
	@n2 = n2
	erb :multiply
end

get "/subtract/:n1/:n2" do |n1, n2|
	@n1 = n1
	@n2 = n2
	erb :subtract
end

get "/divide/:n1/:n2" do |n1, n2|
	@n1 = n1
	@n2 = n2
	erb :divide
end

get "/exponent/:n1/:n2" do |n1, n2|
	@n1 = n1
	@n2 = n2
	erb :exponent
end