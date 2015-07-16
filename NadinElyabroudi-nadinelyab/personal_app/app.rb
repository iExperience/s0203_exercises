require 'sinatra'

get "/Home" do
	erb :home
end

get "/About" do
	erb :about
end

get "/Contact" do
	erb :contact
end