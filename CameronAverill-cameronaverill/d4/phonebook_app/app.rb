require "sinatra"

get "/" do
	@contacts_array = ["Erica", "Justin", "Kelly"]
	erb :home_page
end


get "/contacts" do
	@contacts_array = ["Erica", "Justin", "Kelly"]
	erb :contacts
end

get "/contacts/:name" do |name|
	contacts = {Erica: "(949) 395-1101",
				Justin: "(714) 234-1234",
				Kelly: "(627) 914-1123"}
	@name = name
	@phone_number = contacts[name.to_sym]
	erb :individual
end