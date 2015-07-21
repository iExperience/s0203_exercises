# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


shark1 = Shark.create(name: 'bob', size: 5, gender: 'boy', danger_level: 5)
shark2 = Shark.create(name: 'suzy', size: 6, gender: 'girl', danger_level: 9)
shark3 = Shark.create(name: 'lila', size: 3, gender: 'girl', danger_level: 0)

