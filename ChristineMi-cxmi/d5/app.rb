
require "sinatra"

get "/" do

	backpack = { spoon_name: "The Backpack", description: "A big spoon who is substantially larger than the little spoon"}
	pusher = { spoon_name: "The Pusher", description: "A big spoon who gradually pushes the little spoon off the bed"}
	goliath = { spoon_name: "The Goliath", description: "A big spoon who holds the little spoon very tightly as to induce rigor mortis in the small spoon"}
	crescent = { spoon_name: "The Waxing Crescent", description: "A big spoon whose curvature is that of a perfect waxing crescent moon"}


	@bigspoons = [backpack, pusher, goliath, crescent]

	crusher = { spoon_name: "The Arm Crusher", description: "A little spoon who crushes the big spoon’s arms until he/she/it can no longer feel blood circulating; may or may not result in amputation"}
	monster = { spoon_name: "The Hair Monster", description: "A little spoon who has a lot of hair that inevitably ends up in the big spoon’s mouth"}
	shapeshifter = { spoon_name: "The Shapeshifter", description: "A little spoon who starts out in typical spoon position but ends up moving throughout the night so that his/her/its back ends up not against the big spoon’s front as per protocol but flat on the mattress/sleeping surface"}
	collector = { spoon_name: "The Blanket Collector", description: "A little spoon who ends up hogging the blankets"}

	@littlespoons = [crusher, monster, shapeshifter, collector]

	erb :home
end

get "/spoontypes" do

	backpack = { spoon_name: "The Backpack", description: "A big spoon who is substantially larger than the little spoon"}
	pusher = { spoon_name: "The Pusher", description: "A big spoon who gradually pushes the little spoon off the bed"}
	goliath = { spoon_name: "The Goliath", description: "A big spoon who holds the little spoon very tightly as to induce rigor mortis in the small spoon"}
	crescent = { spoon_name: "The Waxing Crescent", description: "A big spoon whose curvature is that of a perfect waxing crescent moon"}


	@bigspoons = [backpack, pusher, goliath, crescent]

	crusher = { spoon_name: "The Arm Crusher", description: "A little spoon who crushes the big spoon’s arms until he/she/it can no longer feel blood circulating; may or may not result in amputation"}
	monster = { spoon_name: "The Hair Monster", description: "A little spoon who has a lot of hair that inevitably ends up in the big spoon’s mouth"}
	shapeshifter = { spoon_name: "The Shapeshifter", description: "A little spoon who starts out in typical spoon position but ends up moving throughout the night so that his/her/its back ends up not against the big spoon’s front as per protocol but flat on the mattress/sleeping surface"}
	collector = { spoon_name: "The Blanket Collector", description: "A little spoon who ends up hogging the blankets"}

	@littlespoons = [crusher, monster, shapeshifter, collector]

	erb :all_spoons
end


# get "/spoontypes/:name" do |name|

# 	backpack = { spoon_name: "The Backpack", description: "A big spoon who is substantially larger than the little spoon"}
# 	pusher = { spoon_name: "The Pusher", description: "A big spoon who gradually pushes the little spoon off the bed"}
# 	goliath = { spoon_name: "The Goliath", description: "A big spoon who holds the little spoon very tightly as to induce rigor mortis in the small spoon"}
# 	crescent = { spoon_name: "The Waxing Crescent", description: "A big spoon whose curvature is that of a perfect waxing crescent moon"}

# 	crusher = { spoon_name: "The Arm Crusher", description: "A little spoon who crushes the big spoon’s arms until he/she/it can no longer feel blood circulating; may or may not result in amputation"}
# 	monster = { spoon_name: "The Hair Monster", description: "A little spoon who has a lot of hair that inevitably ends up in the big spoon’s mouth"}
# 	shapeshifter = { spoon_name: "The Shapeshifter", description: "A little spoon who starts out in typical spoon position but ends up moving throughout the night so that his/her/its back ends up not against the big spoon’s front as per protocol but flat on the mattress/sleeping surface"}
# 	collector = { spoon_name: "The Blanket Collector", description: "A little spoon who ends up hogging the blankets"}

# 	all_spoons = [crusher, monster, shapeshifter, collector, backpack, pusher, goliath, crescent]

# 	all_spoons.each do |info|
# 		if "#{name}" == info[:spoon_name].downcase
# 		 @description = info[:description]
# 		end
# 	end
	
# 	erb :indiv_spoons
# end


get "/bigspoons" do 
	backpack = { spoon_name: "The Backpack", description: "A big spoon who is substantially larger than the little spoon"}
	pusher = { spoon_name: "The Pusher", description: "A big spoon who gradually pushes the little spoon off the bed"}
	goliath = { spoon_name: "The Goliath", description: "A big spoon who holds the little spoon very tightly as to induce rigor mortis in the small spoon"}
	crescent = { spoon_name: "The Waxing Crescent", description: "A big spoon whose curvature is that of a perfect waxing crescent moon"}

	@big_spoons = [backpack, pusher, goliath, crescent]

	erb :bigspoons 
end 

get "/littlespoons" do 
	crusher = { spoon_name: "The Arm Crusher", description: "A little spoon who crushes the big spoon’s arms until he/she/it can no longer feel blood circulating; may or may not result in amputation"}
	monster = { spoon_name: "The Hair Monster", description: "A little spoon who has a lot of hair that inevitably ends up in the big spoon’s mouth"}
	shapeshifter = { spoon_name: "The Shapeshifter", description: "A little spoon who starts out in typical spoon position but ends up moving throughout the night so that his/her/its back ends up not against the big spoon’s front as per protocol but flat on the mattress/sleeping surface"}
	collector = { spoon_name: "The Blanket Collector", description: "A little spoon who ends up hogging the blankets"}

	@little_spoons = [crusher, monster, shapeshifter, collector]


	erb :littlespoons

end 

get "/bigspoons/:name" do |name|

	backpack = { spoon_name: "The Backpack", description: "A big spoon who is substantially larger than the little spoon"}
	pusher = { spoon_name: "The Pusher", description: "A big spoon who gradually pushes the little spoon off the bed"}
	goliath = { spoon_name: "The Goliath", description: "A big spoon who holds the little spoon very tightly as to induce rigor mortis in the small spoon"}
	crescent = { spoon_name: "The Waxing Crescent", description: "A big spoon whose curvature is that of a perfect waxing crescent moon"}


	big_spoons = [backpack, pusher, goliath, crescent]


	big_spoons.each do |info|
		if "#{name}" == info[:spoon_name].split.last.downcase
		 @description = info[:description]
		 @spooning_name = info[:spoon_name]
		end
	end
	
	erb :indiv_spoons
end

get "/littlespoons/:name" do |name|

	crusher = { spoon_name: "The Arm Crusher", description: "A little spoon who crushes the big spoon’s arms until he/she/it can no longer feel blood circulating; may or may not result in amputation"}
	monster = { spoon_name: "The Hair Monster", description: "A little spoon who has a lot of hair that inevitably ends up in the big spoon’s mouth"}
	shapeshifter = { spoon_name: "The Shapeshifter", description: "A little spoon who starts out in typical spoon position but ends up moving throughout the night so that his/her/its back ends up not against the big spoon’s front as per protocol but flat on the mattress/sleeping surface"}
	collector = { spoon_name: "The Blanket Collector", description: "A little spoon who ends up hogging the blankets"}

	little_spoons = [crusher, monster, shapeshifter, collector]


	little_spoons.each do |info|
		if "#{name}" == info[:spoon_name].split.last.downcase
		 @description = info[:description]
		 @spooning_name = info[:spoon_name]
		end
	end
	
	erb :indiv_spoons
end