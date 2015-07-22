# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Shark.create! name: "Jaws", size: "100", gender: "Male", danger_level: "10"

Shark.create! name: "Felica", size: "50", gender: "Female", danger_level: "7"

Shark.create! name: "Brian", size: "1", gender: "Male", danger_level: "1"
