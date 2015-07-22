# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Animal.delete_all

puts "Creating animals..."

Animal.create name: "Carl", species: "Zebra", region: "Cape Point", diet: "Potatoes",
color: "yellow", age: 250, size: 100

Animal.create name: "Maria", species: "Zebra", region: "Cape Point", diet: "Corn",
color: "yellow", age: 5, size: 80

Animal.create name: "Fernando", species: "Springbok", region: "Madrid", diet: "Eggs", 
color: "red", age: 93, size: 100