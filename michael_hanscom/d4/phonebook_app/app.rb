require "sinatra"


get "/" do 
	erb :index
end

get "/contacts" do
    @contacts = ["Wick", "Cameron", "Todd"]
	erb :contacts
end

get "/contacts/:name" do |name|
	@name = name
    contacts = {"Wick" => "123409897087", "Cameron" => "1234798612", "Todd" => "1928634987"}
    @number = contact[name]
	erb :each
end