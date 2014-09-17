# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Item.destroy_all
User.destroy_all

items = Item.create([{ name: "Vacuum", status: "Available", condition: "Excellent"}, { name: "Ladder", status: "Available", condition: "Excellent"}, { name: "Tent", status: "Available", condition: "Good"}, { name: "Bicycle Pump", status: "Available", condition: "Good"}])

users = User.create([{ name: "Lynn", unit: 510, email: "lynn@lynn.com"}, { name: "Sally", unit: 101, email: "sally@sally.com"}])

users[0].items << items[0]
users[1].items << items[2]
users[0].items << items[1]