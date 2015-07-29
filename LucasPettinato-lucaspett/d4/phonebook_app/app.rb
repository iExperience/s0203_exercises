require "sinatra"

get "/" do 
	@contacts = ["Maria", "Aleka", "Vicki"]
	erb :index
end

get "/contacts" do
	contacts = {"Maria" => "+1 (907) 223-0466", "Aleka" => "+27 (76) 333-4807", "Vicki" => "+27 (60) 628-8452"}
	@contacts = contacts
	erb :all_numbers_index
end

get "/contacts/:name" do |name|
	contacts = {"Maria" => "+1 (907) 223-0466", "Aleka" => "+27 (76) 333-4807", "Vicki" => "+27 (60) 628-8452"}
	@contacts = contacts
	@name = name
	erb :numbers_index
end
