require 'sinatra'

get "/" do
	@contacts = ['Sofia', 'Daisy', 'Ana']
	erb :index
end

get "/contacts" do
	@contacts = ['Sofia', 'Daisy', 'Ana']
	erb :contacts
end

get "/contacts/:name" do |name|
	@contacts = {'Sofia' => '0894653228', 'Daisy' => '0568934562',
	 'Ana' => '0893542325'} 
	@name = name
	erb :this_contact
end