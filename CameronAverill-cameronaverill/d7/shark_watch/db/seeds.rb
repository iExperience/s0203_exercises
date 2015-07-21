# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

shark_one = Shark.new
shark_one.name = "Francesca"
shark_one.size = 8
shark_one.gender = "Male"
shark_one.danger_level = 4
shark_one.save

shark_two = Shark.new
shark_two.name = "Aobo"
shark_two.size = 2
shark_two.gender = "Female"
shark_two.danger_level = 9
shark_two.save

shark_three = Shark.new
shark_three.name = "Tim"
shark_three.size = 7
shark_three.gender = "Male"
shark_three.danger_level = 3
shark_three.save