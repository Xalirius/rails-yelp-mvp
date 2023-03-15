# This file should contain all the record creation needed to  the database with its default values.
# The data can then be loaded with the bin/rails db: command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE',category: 'chinese', phone_number: '0327884113' }
pizza_planet =  { name: 'Pizza Planet', address: '34 Boundary St, London E2 7JE',category: 'italian', phone_number: '0327884563' }
chez_francis =  { name: 'Chez Francis', address: '134 Boundary St, London E2 7JE',category: 'french', phone_number: '0327567363' }
central_perk =  { name: 'Central Perk', address: '155 Wahsington St, New york E',category: 'belgian', phone_number: '0327523657' }
palais_imperial = { name: 'Palais Imperial', address: '345 Wahsington St, New york E',category: 'chinese', phone_number: '0327567895' }

[dishoom, pizza_planet, chez_francis, central_perk, palais_imperial].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
