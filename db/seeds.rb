# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
cat = %w[chinese italian japanese french belgian]
puts "cleaning database..."
Restaurant.delete_all
puts "creating restaurants"
10.times do
  rest = Restaurant.new
  rest.name = Faker::Restaurant.name
  rest.category = cat.sample
  rest.address = Faker::Address.full_address
  rest.save
end
puts "finished!"
