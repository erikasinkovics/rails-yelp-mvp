# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+44 000 000 000", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+44 000 000 000", category: "italian"}
green_panther =  { name: "Green Panther", address: "160 St Viateur Montreal", phone_number: "+1 438 000 0000", category: "french"}
il_bazzali =  { name: "Il Bazzali", address: "285 Rue Beaubien E, Montréal, QC H2S 1R7", phone_number: "+1 514 439 4878", category: "italian"}
yuukai =  { name: "Yuukai fusion Japonaise", address: "5407 Park Ave, Montreal, Quebec H2V 4G9", phone_number: "+1 514 303 0332", category: "japanese"}
frite_alors =  { name: "Frite Alors", address: "433 Rue Rachel E, Montréal, QC H2J 2G8", phone_number: "+1 514 843 2490", category: "belgian"}

[ dishoom, pizza_east, green_panther, il_bazzali, yuukai, frite_alors ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
