require 'sinatra'

get "/" do
	erb :index
end

get "/species/:animal" do |animal|
	@animal = animal
	erb :species
end