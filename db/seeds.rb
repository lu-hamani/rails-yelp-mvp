# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding Starts"

restaurant_name = ["Chez Camille", "Chez Lucas", "Chez Roger", "Chez Bernard", "Chez Ahmed"]

address = ["1 rue de la soif", "2 rue de la faim", "3 rue de j'ai vraiment", "4 rue de la petite soeur", "5 rue du gravier"]

category = ["chinese", "italian", "japanese", "french", "belgian"]

rating = rand(1..5)

phone_number = ["+33", "+34", "+1", "+32", "+31"]

content = ["Great!", "Top!", "I'll go there again!", "Delicious!", "Wonderful place!" ]

10.times do
  restaurant = Restaurant.new(name: restaurant_name.sample, address: address.sample, category: category.sample, phone_number: phone_number.sample)
  restaurant.save
  puts "#{restaurant.name} is saved!"
end

puts "Seeding done !"
