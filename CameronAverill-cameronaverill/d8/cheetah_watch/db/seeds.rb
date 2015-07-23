# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Shelter.delete_all

Shelter.create! name: "New Haven", address: "Connecticut", open: true
Shelter.create! name: "Safe Space", address: "San Francisco", open: false
shelter = Shelter.create! name: "Mother City", address: "Canada", open: true


Animal.delete_all

Animal.create! name: "Carl", species: "Zebra", 
region: "Cape Point", diet: "herbivore", color: "Yellow",
age: 250, size: 100, shelter_id: shelter.id

Animal.create! name: "Maria", species: "Zebra", 
region: "Cape Point", diet: "omnivore", color: "Blue",
age: 5, size: 80, shelter_id: shelter.id

Animal.create! name: "Fernando", species: "Springbok", region: "Madrid", 
diet: "carnivore", color: "red", age: 93, size: 100, shelter_id: shelter.id

Animal.create! shelter_id: shelter.id

