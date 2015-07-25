dishes = {"Hash browns" => ["Potatoes", "Butter"], "Sushi" => ["fish", "rice"], "Salsa" => ["tomatoes", "onions", "cilantro"]}

puts dishes

recipes = {"Hash browns" => {
							"description" => "warm deliciousess", 
							"ingredients" => ["Potatoes", "Butter"],
							"steps" => ["cut potatoes", "sizzle in pan"]},
			"Sushi" => {
							"description" => "crisp and tasty fish on rice", 
							"ingredients" => ["fish", "rice"],
							"steps" => ["filet fish", "pack rice onto bamboo", "roll"]},
		"Salsa" => {
							"description" => "spicy and fun with chips", 
							"ingredients" => ["tomatoes", "onions", "cilantro"],
							"steps" => ["cube tomatoes", "chop onions", "mix"]}}
p recipes