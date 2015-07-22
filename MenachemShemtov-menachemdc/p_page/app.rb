require "sinatra"

Erica = { name: "erica", number: "79877696574"}
Brian = { name: "Brian", number: "79877696574"}
Michael = { name: "Michael", number: "79877696574"}

contacts = [Erica, Brian, Michael]


get "/" do


Erica = { name: "erica", number: "79877696574"}
Brian = { name: "Brian", number: "79877696574"}
Michael = { name: "Michael", number: "79877696574"}

@contacts = [Erica, Brian, Michael]

	erb :index
end

get "/contacts" do

	@contacts = contacts

	erb :index_view
end

get "/contacts/:name" do |name|

	@contacts = contacts
	@name = name
	@contacts.each do |person|
		if person[:name] == name
			@contact = person
		end
	end
	erb :contact_view
end

helpers do
	def print_info contact
		"number: #{contact[:number]}"
	end
end




