# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


items = Item.create([{ name: "Vacuum", status: "Available", condition: "Excellent"}, { name: "Ladder", status: "Available", condition: "Excellent"}, { name: "Tent", status: "Available", condition: "Good"}, { name: "Bicycle Pump", status: "Available", condition: "Good"}])

