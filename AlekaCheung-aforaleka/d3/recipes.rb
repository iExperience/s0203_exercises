dishes = {
	'Hash Browns' => ["Potatoes", "Butter", "Magic"], 
	'Scrambled Eggs' => ["Eggs", "Butter", "Milk"], 
	'Salmon Sushi' => ["Sushi", "Rice", "Seaweed"]
}

recipes = {
	'Hash Browns' => {
		ingredients: ["Potatoes", "Butter", "Magic"],
		steps: ["Add some Magic and say a spell", "Potatoes and Butter will then become Hash Browns"]
	},
	'Scrambled Eggs' => {
		ingredients: ["Eggs", "Butter", "Milk"],
		steps: ["Beat the eggs and milk in bowl", "Heat butter in skillet over medium heat", "Pour in egg mixture", "Cook -- pull, lift, fold the eggs"]
	},
	'Salmon Sushi' => {
		ingredients: ["Sushi", "Rice", "Seaweed"],
		steps: ["Try making the sushi following youtube tutorials", "Go to a sushi store closeby", "Order salmon sushi because you're probably gonna mess it up"]
	}
}

# puts dishes["Scrambled Eggs"]
# puts recipes["Hash Browns"]
# puts recipes.keys
# puts recipes.values