dishes = {
	'mashed potatoes' => "potatoes, butter, milk", 
	'pizza' => "tomatoes, cheese, dough", 
	'bacon' => "bacon, bacon, bacon"
}

dishes.each do |key, value|
	puts key
	puts value
end 

recipes = {
	'mashed potatoes' => {description: "delicious potatoes that have been delicately ground to a pulpy mixture", 
		ingredients: ["potatoes", "butter", "milk"], 
		steps: ["boil potatoes", "mash potatoes", "add butter and milk", "mash potatoes again"]},

	'pizza' => {description: "a flat, open-faced baked pie of Italian origin", 
		ingredients: ["tomatoes", "cheese", "dough"], 
		steps: ["make dough into pie", "make tomatoes into tomato sauce", "put tomato sauce on dough pie", "put cheese on tomato sauce on dough pie", "bake until cooked"]},

	'bacon' => {description: "the back and sides of the hog, salted and dried and sliced thin", 
		ingredients: ["bacon", "bacon", "bacon"], 
		steps: ["take bacon out of container", "cook in pan", "drain fat"]}

}

recipes.each do |key, value|
	puts key 
	value.each do |part, attribute|
		puts "the #{part} of the recipe:  #{attribute}"
	end
end 