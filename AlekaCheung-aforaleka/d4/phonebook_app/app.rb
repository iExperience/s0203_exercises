require "sinatra"

contacts = {"Vicki" => "+27 606288452", "Maria" => "+1 9072230466", "Lucas" => "+27 765305288"}

get "/" do
	@contacts = contacts
	erb :index
end

get "/contacts" do
	@contacts = contacts
	erb :contacts
end

get "/contacts/:name" do |name|
	@name = name.strip
	@contacts = contacts
	erb :names
end
