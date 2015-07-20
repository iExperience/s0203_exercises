require "sinatra"

get "/" do
	erb :index
end

get "/home" do
	"BETA"
end

get "/about" do
	"BETA"
end

get "/contact" do
	"BETA"
end