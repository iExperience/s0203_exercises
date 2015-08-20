require "sinatra"

get "/" do 
	erb :index
end

get "/contacts" do 
	erica = {name: "Erica", number: "1287498234"}
	ian = {name: "Ian", number: "2348753621"}
	josh = {name: "Josh", number: "2398710234"}
	@contacts = [erica, ian, josh]

	erb :contacts
end

get "/contacts/:name" do |name|
	erica = {name: "Erica", number: "1287498234"}
	ian = {name: "Ian", number: "2348753621"}
	josh = {name: "Josh", number: "2398710234"}
	name = [erica, ian, josh]

	name.each do |information|
		contacts = {information[:name] => information[:number]}
		if contacts.has_key? :name.to_s.capitalize == true
			@contacts = contacts
			@name = name
			erb :contacts
		end
	end
end