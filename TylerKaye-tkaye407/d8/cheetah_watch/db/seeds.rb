

puts "Deleting Shelters..."

Shelter.delete_all

puts "Creatinng Shelters...."

Shelter.create! name: "New Haven", address: "Connecticut", open: true
Shelter.create! name: "Safe Space", address: "San Francisco", open: false
Shelter.create! name: "Mother City", address: "Canada", open: true

shelter = Shelter.first

Animal.delete_all

puts "Creating Animals...."

Animal.create! name: "Carl", species: "Zebra", region: "Cape Point", diet:
"Herbivore", color: "Yellow", age: 250, size: 100, shelter_id: shelter.id

Animal.create! name: "Maria", species: "Zebra", region: "Cape Point", diet:
"Herbivore", color: "Blue", age: 5, size: 80, shelter_id: shelter.id

Animal.create! name: "Wick", species: "Sprinkbok", region: "Jo-Burg", diet:
"Omnivore", color: "Pink", age: 81, size: 8, shelter_id: shelter.id

puts "Seed is Planted"
