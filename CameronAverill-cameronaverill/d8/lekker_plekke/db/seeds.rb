# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Place.delete_all

lions_head = Place.create! name: "Lion's Head", rating: 4, address: "Plateau Rd"

once = Place.create! name: "Once in Cape Town", rating: 4, address: "73 Kloof Street"

dubliner = Place.create! name: "Dubliner", rating: 5, address: "251 Long Street"

cape_of_good_hope = Place.create name: "Cape of Good Hope", rating: 4,
address: "Cape Point Road"

Comment.delete_all

karen = Comment.create! commenter: 'Julia', text: 'love it!', place_id: lions_head



