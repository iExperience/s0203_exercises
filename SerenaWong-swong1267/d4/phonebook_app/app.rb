require "sinatra"

get "/" do
	@contacts = ["Serena", "Cam", "Aobo"]
	erb :home
end

get "/contacts" do
	@contacts = ["Serena", "Cam", "Aobo"]
	erb :contacts
end

get "/contacts/:name" do |name|
	contacts = {serena: "9496779886", cam: "123456789", aobo: "987654321"}
	@name = name
	@number = contacts[name.to_sym.downcase]
	erb :contact
end

