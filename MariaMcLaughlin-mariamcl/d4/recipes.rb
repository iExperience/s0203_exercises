dishes = {grilled_cheese => ["cheese", "bread", "butter"], pancakes => ["bisquik", "milk", "eggs"], coffee => ["coffee", "sugar", "milk"]}
recipes = {
	:grilled_cheese => {
		:description => "Yummy",
		:ingredients => dishes['grilled_cheese'],
		:steps => ["butter the bread", "add the cheese", "put bread slices together"]
	}
	:pancakes => {
		:description => "Breakfast foodz",
		:ingredients => dishes['pancakes'],
		:steps => ["make the batter", "pour on the skillet", "wait until golden brown and yummy"]
	}
	:coffee => {
		:description => "this is my life blood",
		:ingredients => dishes['coffee'],
		:steps => ["brew the coffee love", "add the milk so you don't burn your tongue", "add the sugar to be yummy"]
	}
}