# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating places ..."

Place.delete_all

Place.create! name: "Cape Point", distance: 50, highlight: "Ostriches!",
description: "Cape of Good Hope, home of penguins, baboons, and giant waves"

Place.create! name:"Lion's Head", distance: 5, highlight: "View from the top",
description: "The mountain between Signal Hill and Table Mountain"

Place.create! name:"Hought Bay", distance: 20, highlight: "Harbor seals!",
description: "A city in the bay behind Table Mountain, has a harborside market"

Place.create! name:"Dubliner", distance: 5, highlight: "House music",
description: "A bar on long street where phones are often stolen"

