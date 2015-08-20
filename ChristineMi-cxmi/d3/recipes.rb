hash_browns = ["potatoes", "butter", "salt"]
omelets = ["eggs", "vegetables", "cheese"]
sandwich = ["bread", "turkey", "cheese", "lettuce", "tomato"]

#dishes = {"Hash Browns" => hash_browns, "Omelets" => omelets, "Sandwich" => sandwich}


hash_brown_steps = ["Slice Potatoes", "Put in Pan", "Cook in lots of butter"]
hash_brown_hash = {
	:description => "The Best Thing Ever",
	:ingredients => hash_browns,
	:steps => hash_browns_steps}


omelets_steps = ["Scramble eggs", "Put in Pan", "Add other stuff"]
omelets_hash = {
	:description => "Eggy Goodness",
	:ingredients => omelets,
	:steps => omelets_steps
}

sandwich_steps = ["Put stuff in bread", "Put on a plate", "Eat it"]
sandwich_hash = {
	:description => "Basic Food",
	:ingredients => sandwich,
	:steps => sandwich_steps
}


recipes = {"Hash Browns" => hash_brown_hash, "Omelets" => omelets_hash, "Sandwich" => sandwich_hash}