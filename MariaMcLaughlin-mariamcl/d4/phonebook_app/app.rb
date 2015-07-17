require "sinatra"

contacts = { 
	:lucas => { 
		name: "Lucas", 
		number: "+27(76)5305288" 
	},
	:vicki => {
		name: "Vicki",
		number: "+27(60)6288452"
	},
	:christine => {
		name: "Christine",
		number: "+27(62)565327275"
	}
}


get "/" do 
	@contacts = ["lucas", "vicki", "christine"]
	erb :index
end

get "/contacts" do
	@contacts = ["lucas", "vicki", "christine"]
	erb :contacts_view
end

get "/contacts/:name" do |name|
	contacts = { 
	:lucas => { 
		name: "Lucas", 
		number: "+27(76)5305288" 
	},
	:vicki => {
		name: "Vicki",
		number: "+27(60)6288452"
	},
	:christine => {
		name: "Christine",
		number: "+27(62)565327275"
	}
}
	@contacts = contacts
	@name = contacts[:"#{name}"][:name]
	@number = contacts[:"#{name}"][:number]
	erb :single_contact_view
end

