require "sinatra"

get "/" do
	@rand_num = rand(10)
	erb :home
end

get "/match/:match_num/:avoid_num" do |match, avoid|

	animals = [
   	 	{:description => "Freakishly tall.", :image => "giraffe.jpg", :name => "giraffe"},
		{:description => "like literally.", :image => "starbucks.jpg", :name => "a non-fat soy pumpkin-spice caramel latte that can't even right now"},
		{:description => "\#Illuminati", :image => "oprah.jpg", :name => "Oprah"},
		{:description => "You are an enigma.  So majestic and yet so disgusting.", :image => "ostrich.jpg", :name => "Pissing Ostrich"},
		{:description => "Whoa dude.  Chill out.  Maybe you should see a therapist or something for your anger issues.", :image => "baboon.jpg", :name => "Angry Baboon"},
		{:description => "You're the kinda dude who gets knocked down by a wave and pops right back up.", :image => "penguin.jpg", :name => "Derpy Penguin"},
		{:description => "*various catcalling noises*  You definitely know how to work your assets.", :image => "beefcake.jpg", :name => "Beefcake"},
		{:description => "impressive in theory, but ultimately useless", :image => "franc.jpg", :name => "one million prussian francs"},
		{:description => "Interests include: factories, fast food, farming and being awesome", :image => "brian.jpg", :name => "Brian"},
		{:description => "you sicken me.", :image => "decaf-coffee.jpg", :name => "Decaf Coffee"}


	]

	@match_name = animals[match.to_i][:name]
	@avoid_name = animals[avoid.to_i][:name]
	@match_pic = animals[match.to_i][:image]
	@avoid_pic = animals[avoid.to_i][:image]
	erb :match_index
end


get "/animal/:index" do |index|


animals = [
   	    {:description => "Freakishly tall.", :image => "giraffe.jpg", :name => "giraffe"},
		{:description => "like literally.", :image => "starbucks.jpg", :name => "a non-fat soy pumpkin-spice caramel latte that can't even right now"},
		{:description => "\#Illuminati", :image => "oprah.jpg", :name => "Oprah"},
		{:description => "You are an enigma.  So majestic and yet so disgusting.", :image => "ostrich.jpg", :name => "Pissing Ostrich"},
		{:description => "Whoa dude.  Chill out.  Maybe you should see a therapist or something for your anger issues.", :image => "baboon.jpg", :name => "Angry Baboon"},
		{:description => "You're the kinda dude who gets knocked down by a wave and pops right back up.", :image => "penguin.jpg", :name => "Derpy Penguin"},
		{:description => "*various catcalling noises*  You definitely know how to work your assets.", :image => "beefcake.jpg", :name => "Beefcake"},
		{:description => "impressive in theory, but ultimately useless", :image => "franc.jpg", :name => "one million prussian francs"},
		{:description => "Interests include: factories, fast food, farming and being awesome", :image => "brian.jpg", :name => "Brian"},
		{:description => "you sicken me.", :image => "decaf-coffee.jpg", :name => "Decaf Coffee"}
	]
@match_num = rand(10)
@avoid_num = rand(10)

while @match_num == index.to_i 
	@match_num = rand(10)

end

while (@avoid_num == @match_num || @avoid_num == index.to_i)
	@avoid_num = rand(10)
end

@name = animals[index.to_i][:name] #to_i
@description = animals[index.to_i][:description]
@image = animals[index.to_i][:image]

erb :animal_index
end