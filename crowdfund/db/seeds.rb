# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create! ([
  {
    name: "Fleye - Your Personal Flying Robot",
    category: "Technology",
    description: "Fleye is a whole new kind of drone. Safe, fun and autonomous. Invent the future of flying robots thanks to its open API and SDK.",
    target_pledge_amount: 175000.00,
    pledging_ends_on: 100.days.from_now,
    website: "gofleye.com"
  },
  {
    name: "Shooz: The World's First Modular-Tech Travel Shoe",
    category: "Fashion",
    description: "MODULAR-TECH patented footwear to Travel lighter, Customize and Reduce your carbon footprint.",
    target_pledge_amount: 25000.00,
    pledging_ends_on: 5.days.ago,
    website: "shoozmadeinitaly.com"
  },
  {
    name: "Wurm - Ice Age RPG",
    category: "Games",
    description: "Survive perilous hunts & attempt legendary quests during the Ice Age of 35,000 years ago in this indie RPG.",
    target_pledge_amount: 9000.00,
    pledging_ends_on: 30.days.from_now,
    website: "http://www.editions-icare.com/"
  }
])  