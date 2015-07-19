require "sinatra"

get "/" do
	@rand_num = rand(8)
	erb :home
end

get "/match/:index" do
	animals = [
   	 	{:description => "blah", :image => "blah", :name => "Giraffe"},
		{:description => "blah", :image => "blah", :name => "Sponge"},
		{:description => "blah", :image => "blah", :name => "Oprah"},
		{:description => "blah", :image => "blah", :name => "Pissing Ostrich"},
		{:description => "blah", :image => "blah", :name => "Angry Baboon"},
		{:description => "blah", :image => "blah", :name => "Derpy Penguin"},
		{:description => "blah", :image => "blah", :name => "Beefcake"},
		{:description => "blah", :image => "blah", :name => "Quokka"}
	]
end


get "/animal/:index" do |index|


animals = [
	{:description => "blah", :image => "blah", :name => "Giraffe"},
	{:description => "blah", :image => "blah", :name => "Sponge"},
	{:description => "blah", :image => "blah", :name => "Oprah"},
	{:description => "blah", :image => "blah", :name => "Pissing Ostrich"},
	{:description => "blah", :image => "blah", :name => "Angry Baboon"},
	{:description => "blah", :image => "blah", :name => "Derpy Penguin"},
	{:description => "blah", :image => "blah", :name => "Beefcake"},
	{:description => "blah", :image => "blah", :name => "Quokka"}

	@match_num = rand(8)
]

@name = animals[index.to_i][:name] #to_i
@description = animals[index.to_i][:description]
@image = animals[index.to_i][:image]

erb :animal_index
end