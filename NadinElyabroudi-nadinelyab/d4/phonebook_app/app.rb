require 'sinatra'

get "/" do
	erb :index
end

get "/contacts" do
	@contacts = ['Aobo', 'Christine', 'Serena']
	erb :contacts
end

get "/contacts/:name" do |name|
	@contacts = {'Aobo' => '0894653228', 'Christine' => '0568934562',
	 'Serena' => '0893542325'} 
	@name = name
	erb :this_contact
end