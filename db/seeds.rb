# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Item.destroy_all
User.destroy_all

items = Item.create([{ name: "Dyson Vacuum", status: "Available", condition: "Excellent"},
  { name: "10' Ladder", status: "Available", condition: "Excellent"},
  { name: "Two-Person Camping Tent", status: "Available", condition: "Good"},
  { name: "Bicycle Pump", status: "Available", condition: "Good"},
  { name: "Ice Cooler", status: "Available", condition: "Good"},
  { name: "Plunger", status: "Available", condition: "Good"},
  { name: "Bicycle", status: "Available", condition: "Good"},
  { name: "Folding Card Table", status: "Available", condition: "Excellent"},
  { name: "Set of 4 Folding Chairs", status: "Available", condition: "Excellent"},
  { name: "Large Suitcase", status: "Available", condition: "Like New"},
  { name: "Traveling Truck", status: "Available", condition: "Like New"},
  { name: "Household Electric Drill", status: "Available", condition: "Excellent"},
  { name: "Tool Set", status: "Available", condition: "Good"},
  { name: "Camping Stove", status: "Available", condition: "Good"},
  { name: "Easel", status: "Available", condition: "Good"},
  { name: "Karaoke Machine", status: "Available", condition: "Like New"},
  { name: "Gardening Shovel", status: "Available", condition: "Good"},
  { name: "Outdoor Party Lights", status: "Available", condition: "Excellent"},
  { name: "Set of 10 Party Stemware", status: "Available", condition: "Excellent"},
  { name: "Decorative Tablecloth", status: "Available", condition: "Excellent"}])
     


# users = User.create([{ name: "Lynn Jaxon", unit: 510, email: "lynn@lynn.com"},
#  { name: "Sally Sooko", unit: 101, email: "sally@sally.com"},
#  { name: "Brian Rosen", unit: 415, email: "brian@brian.com"}, 
#  { name: "Carey Harrison", unit: 408, email: "carey@carey.com"}, 
#  { name: "Hugh O'Donnell", unit: 310, email: "hugh@hugh.com"},
#  { name: "Carlo Smillie", unit: 213, email: "carlo@carlo.com"},
#  { name: "Debbie Chandra", unit: 888, email: "debbie@debbie.com"},
#  { name: "Jim Jaxon", unit: 510, email: "jim@jim.com"}])

users[0].items = [items[0], items[1]]
users[1].items = [items[3], items[6]]
users[2].items << items[5]
users[3].items << items[7]
users[4].items << items[8]
users[5].items = [items[9], items[15], items[16], items[17], items[18], items[19]]
users[6].items = [items[10], items[11], items[12], items[14]]
users[7].items = [items[2], items[4], items[13]]



















