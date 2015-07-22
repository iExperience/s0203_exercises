require "sinatra"

get "/" do 
	erb :index
end

get "/add/:first/:second" do |first, second|
	@first = first
	@second = second
	erb :index
end

get "/subtract/:first/:second" do |first, second|
	
end

get "/divide/:first/:second" do |first, second|
	
end

get "/multiply/:first/:second" do |first, second|
	
end