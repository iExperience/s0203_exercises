require "sinatra"

get "/" do 
	erb :index
end

get "/contacts" do 

	@contacts = ["Spongebob", "Patrick Star", "Squidward"]
	erb :contacts_index
end

get "/contacts/:name" do |name|
	contacts = { "Spongebob" => 12345, "Patrick Star" => 56678, "Squidward" => 104050}
	@name = name
	@number = contacts[name]
	erb :numbers_index
end

